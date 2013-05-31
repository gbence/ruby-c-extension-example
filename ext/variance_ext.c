#include "ruby.h"

void Init_variance_ext();

VALUE method_array_mean(VALUE self);
VALUE method_array_variance(VALUE self);

void Init_variance_ext() {
  rb_define_method(rb_cArray, "mean", method_array_mean, 0);
  rb_define_method(rb_cArray, "variance", method_array_variance, 0);
}

double sum_of_rbArray(VALUE self) {
  long int i;
  long int size = RARRAY_LEN(self);
  double sum = 0.0;

  VALUE *element = RARRAY_PTR(self);

  for (i=0; i<size; i++) {
    switch (TYPE(*element)) {
      case T_FIXNUM:
        sum += rb_num2long(*element);
        break;
      case T_FLOAT:
        sum += rb_num2dbl(*element);
        break;
      default:
        rb_raise(rb_eTypeError, "not valid value");
        break;
    }
    element++;
  }

  return(sum);
}

double mean_of_rbArray(VALUE self) {
  return( sum_of_rbArray(self) / RARRAY_LEN(self) );
}

double variance_of_rbArray(VALUE self) {
  long int i;
  long int size = RARRAY_LEN(self);
  double sum = 0.0;
  double mean = mean_of_rbArray(self);
  double e;

  VALUE *element = RARRAY_PTR(self);

  for (i=0; i<size; i++) {
    switch (TYPE(*element)) {
      case T_FIXNUM:
        e = rb_num2long(*element);
        sum += (e-mean)*(e-mean);
        break;
      case T_FLOAT:
        e = rb_num2dbl(*element);
        sum += (e-mean)*(e-mean);
        break;
      default:
        rb_raise(rb_eTypeError, "not valid value");
        break;
    }
    element++;
  }

  return(sum / size);
}

VALUE method_array_mean(VALUE self) {
  return rb_float_new( mean_of_rbArray(self) );
}

VALUE method_array_variance(VALUE self) {
  return rb_float_new( variance_of_rbArray(self) );
}
