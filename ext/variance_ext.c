#include "ruby.h"

VALUE ArrayClass = Qnil;

void Init_variance_ext();

VALUE method_array_average(VALUE self);

void Init_variance_ext() {
  rb_define_method(rb_cArray, "average", method_array_average, 0);
}

VALUE method_array_average(VALUE self) {
  long int i;
  double sum = 0.0;
  long int size = RARRAY_LEN(self);
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

  return rb_float_new(sum / size);
}

