(module
  (func $local_test (export "local_test")(param i32)(result i32)
      (local i32)
      (i32.const 444)
      (local.set 1)
      (local.get 0)
      (local.get 1)
      (i32.add)
  )
)

(assert_return (invoke "local_test" (i32.const 222)) (i32.const 666))
