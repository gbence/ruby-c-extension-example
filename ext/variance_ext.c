#include "ruby.h"

VALUE ArrayClass = Qnil;

void Init_variance_ext();

VALUE method_array_average(VALUE self);

void Init_variance_ext() {
  rb_define_method(rb_cArray, "average", method_array_average, 0);
}

VALUE method_array_average(VALUE self) {
  int x = 10;
  return INT2NUM(x);
}

