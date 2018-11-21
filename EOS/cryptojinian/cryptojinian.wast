(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$ijjj (func (param i64 i64 i64) (result i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_end_i64" (func $db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "eosio_exit" (func $eosio_exit (param i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $memmove (param i32 i32 i32) (result i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (table 3 3 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN12cryptojinian4initEv $_ZN12cryptojinian6miningERKN5eosio5assetERKh)
 (memory $0 1)
 (data (i32.const 4) "\80f\00\00")
 (data (i32.const 32) "0\00")
 (data (i32.const 48) "invalid symbol name\00")
 (data (i32.const 80) "1.100\00")
 (data (i32.const 96) "1.210\00")
 (data (i32.const 112) "1.331\00")
 (data (i32.const 128) "1.464\00")
 (data (i32.const 144) "1.611\00")
 (data (i32.const 160) "1.772\00")
 (data (i32.const 176) "2.144\00")
 (data (i32.const 192) "2.358\00")
 (data (i32.const 208) "2.594\00")
 (data (i32.const 224) "2.853\00")
 (data (i32.const 240) "3.138\00")
 (data (i32.const 256) "3.452\00")
 (data (i32.const 272) "3.797\00")
 (data (i32.const 288) "4.177\00")
 (data (i32.const 304) "4.595\00")
 (data (i32.const 320) "5.054\00")
 (data (i32.const 336) "5.560\00")
 (data (i32.const 352) "6.116\00")
 (data (i32.const 368) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 432) "transfer\00")
 (data (i32.const 448) "invalid token transfer\00")
 (data (i32.const 480) "must transfer a positive amount\00")
 (data (i32.const 512) "read\00")
 (data (i32.const 528) "invalid EOS \00")
 (data (i32.const 544) "error reading iterator\00")
 (data (i32.const 576) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 640) "cannot create objects in table of another contract\00")
 (data (i32.const 704) "write\00")
 (data (i32.const 720) "cannot pass end iterator to modify\00")
 (data (i32.const 768) "object passed to modify is not in multi_index\00")
 (data (i32.const 816) "cannot modify objects in table of another contract\00")
 (data (i32.const 880) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 944) "get\00")
 (data (i32.const 960) "next primary key in table is at autoincrement limit\00")
 (data (i32.const 1024) "cannot decrement end iterator when the table is empty\00")
 (data (i32.const 1088) "cannot decrement iterator at beginning of table\00")
 (data (i32.const 1136) "Not Inited (No _global)\00")
 (data (i32.const 1168) "4\08\00\00\00\00\00\00\10\'\00\00\00\00\00\00\d0 \00\00\00\00\00\008J\00\00\00\00\00\00P\c3\00\00\00\00\00\00\b06\00\00\00\00\00\00xi\00\00\00\00\00\00\10\'\00\00\00\00\00\000u\00\00\00\00\00\00\10\'\00\00\00\00\00\00T\06\00\00\00\00\00\00\10\'\00\00\00\00\00\00`m\00\00\00\00\00\00\10\'\00\00\00\00\00\00 N\00\00\00\00\00\00xi\00\00\00\00\00\00\08R\00\00\00\00\00\00\18\92\00\00\00\00\00\00|y\00\00\00\00\00\00\8cZ\00\00\00\00\00\00 N\00\00\00\00\00\00XM\00\00\00\00\00\00")
 (data (i32.const 1344) "Not Equal Type\00")
 (data (i32.const 9760) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_Z7explodeRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKc" (func $_Z7explodeRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKc))
 (export "_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE" (func $_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE))
 (export "_Z13string_to_intNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE" (func $_Z13string_to_intNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE))
 (export "_Z13int_to_stringy" (func $_Z13int_to_stringy))
 (export "_Z10cost_tableRKy" (func $_Z10cost_tableRKy))
 (export "apply" (func $apply))
 (export "_ZN12cryptojinian4initEv" (func $_ZN12cryptojinian4initEv))
 (export "_ZN12cryptojinian7setcoinEyyy" (func $_ZN12cryptojinian7setcoinEyyy))
 (export "_ZN12cryptojinian12addcoincountEy" (func $_ZN12cryptojinian12addcoincountEy))
 (export "_ZN12cryptojinian11findcoinposEy" (func $_ZN12cryptojinian11findcoinposEy))
 (export "_ZN12cryptojinian12newcoinbyposEyy" (func $_ZN12cryptojinian12newcoinbyposEyy))
 (export "_ZN12cryptojinian8exchangeENSt3__16vectorIyNS0_9allocatorIyEEEE" (func $_ZN12cryptojinian8exchangeENSt3__16vectorIyNS0_9allocatorIyEEEE))
 (export "_ZN12cryptojinian10onTransferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE" (func $_ZN12cryptojinian10onTransferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "memcmp" (func $memcmp))
 (export "strlen" (func $strlen))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $_Z7explodeRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKc (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (tee_local $7
      (call $strlen
       (i32.const 16)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $7)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $8)
       (i32.shl
        (get_local $7)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.or
        (get_local $8)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $7)
      )
      (br $label$1)
     )
     (set_local $6
      (call $_Znwj
       (tee_local $5
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.or
       (get_local $5)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $8)
      (get_local $6)
     )
     (i32.store offset=4
      (get_local $8)
      (get_local $7)
     )
    )
    (drop
     (call $memcpy
      (get_local $6)
      (i32.const 16)
      (get_local $7)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $6)
     (get_local $7)
    )
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (i32.const 0)
   )
   (i64.store align=4
    (get_local $0)
    (i64.const 0)
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (tee_local $6
       (select
        (i32.load offset=4
         (get_local $1)
        )
        (i32.shr_u
         (tee_local $7
          (i32.load8_u
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        (tee_local $7
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
        )
       )
      )
     )
    )
    (set_local $7
     (select
      (i32.load offset=8
       (get_local $1)
      )
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $7)
     )
    )
    (set_local $4
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
    (set_local $5
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (loop $label$5
     (block $label$6
      (block $label$7
       (block $label$8
        (block $label$9
         (br_if $label$9
          (i32.ne
           (tee_local $1
            (i32.load8_u
             (get_local $7)
            )
           )
           (i32.load8_u
            (get_local $2)
           )
          )
         )
         (block $label$10
          (br_if $label$10
           (i32.ne
            (tee_local $3
             (call $strlen
              (i32.const 16)
             )
            )
            (select
             (i32.load offset=4
              (get_local $8)
             )
             (i32.shr_u
              (tee_local $1
               (i32.load8_u
                (get_local $8)
               )
              )
              (i32.const 1)
             )
             (i32.and
              (get_local $1)
              (i32.const 1)
             )
            )
           )
          )
          (br_if $label$6
           (i32.eqz
            (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
             (get_local $8)
             (i32.const 0)
             (i32.const -1)
             (i32.const 16)
             (get_local $3)
            )
           )
          )
         )
         (br_if $label$8
          (i32.eq
           (tee_local $1
            (i32.load
             (get_local $5)
            )
           )
           (i32.load
            (get_local $4)
           )
          )
         )
         (drop
          (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
           (get_local $1)
           (get_local $8)
          )
         )
         (i32.store
          (get_local $5)
          (i32.add
           (i32.load
            (get_local $5)
           )
           (i32.const 12)
          )
         )
         (br $label$7)
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
         (get_local $8)
         (i32.shr_s
          (i32.shl
           (get_local $1)
           (i32.const 24)
          )
          (i32.const 24)
         )
        )
        (br $label$6)
       )
       (call $_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
        (get_local $0)
        (get_local $8)
       )
      )
      (drop
       (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc
        (get_local $8)
        (i32.const 16)
       )
      )
     )
     (set_local $7
      (i32.add
       (get_local $7)
       (i32.const 1)
      )
     )
     (br_if $label$5
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const -1)
       )
      )
     )
    )
   )
   (block $label$11
    (block $label$12
     (br_if $label$12
      (i32.ne
       (tee_local $6
        (call $strlen
         (i32.const 16)
        )
       )
       (select
        (i32.load offset=4
         (get_local $8)
        )
        (i32.shr_u
         (tee_local $7
          (i32.load8_u
           (get_local $8)
          )
         )
         (i32.const 1)
        )
        (i32.and
         (get_local $7)
         (i32.const 1)
        )
       )
      )
     )
     (br_if $label$11
      (i32.eqz
       (call $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj
        (get_local $8)
        (i32.const 0)
        (i32.const -1)
        (i32.const 16)
        (get_local $6)
       )
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $6
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
      )
     )
     (drop
      (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
       (get_local $6)
       (get_local $8)
      )
     )
     (i32.store
      (get_local $7)
      (i32.add
       (i32.load
        (get_local $7)
       )
       (i32.const 12)
      )
     )
     (br $label$11)
    )
    (call $_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_
     (get_local $0)
     (get_local $8)
    )
   )
   (block $label$14
    (br_if $label$14
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $8)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=8
      (get_local $8)
     )
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $8)
  )
  (unreachable)
 )
 (func $_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEvOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $4
       (i32.add
        (tee_local $2
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 12)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 357913942)
     )
    )
    (set_local $5
     (i32.const 357913941)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 12)
         )
        )
        (i32.const 178956969)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $5
         (select
          (get_local $4)
          (tee_local $5
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $5)
           (get_local $4)
          )
         )
        )
       )
      )
     )
     (set_local $4
      (call $_Znwj
       (i32.mul
        (get_local $5)
        (i32.const 12)
       )
      )
     )
     (br $label$0)
    )
    (set_local $5
     (i32.const 0)
    )
    (set_local $4
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (tee_local $6
     (i32.add
      (get_local $4)
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
     )
    )
    (get_local $1)
   )
  )
  (set_local $2
   (i32.add
    (get_local $4)
    (i32.mul
     (get_local $5)
     (i32.const 12)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $6)
    (i32.const 12)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $4
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $5
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (set_local $1
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $5
     (i32.add
      (get_local $4)
      (i32.const -12)
     )
    )
    (loop $label$6
     (i64.store align=4
      (i32.add
       (get_local $6)
       (i32.const -12)
      )
      (i64.load align=4
       (get_local $5)
      )
     )
     (i32.store
      (i32.add
       (get_local $6)
       (i32.const -4)
      )
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $5)
         (i32.const 8)
        )
       )
      )
     )
     (i32.store
      (get_local $5)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $5)
       (i32.const 4)
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (i32.const 0)
     )
     (set_local $6
      (i32.add
       (get_local $6)
       (i32.const -12)
      )
     )
     (br_if $label$6
      (i32.ne
       (i32.add
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -12)
         )
        )
        (get_local $1)
       )
       (i32.const -12)
      )
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $4
    (get_local $5)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $2)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $5)
     (get_local $4)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $4)
    )
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -12)
    )
   )
   (loop $label$8
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (i32.and
        (i32.load8_u
         (get_local $5)
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 8)
       )
      )
     )
    )
    (br_if $label$8
     (i32.ne
      (i32.add
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const -12)
        )
       )
       (get_local $6)
      )
      (i32.const -12)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
 )
 (func $_Z15string_to_priceNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.and
        (tee_local $3
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (br_if $label$1
       (i32.eqz
        (tee_local $3
         (i32.shr_u
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $4
       (i64.const 0)
      )
      (loop $label$4
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_u
              (get_local $0)
             )
            )
            (i32.const -48)
           )
           (i32.const 255)
          )
          (i32.const 9)
         )
        )
        (set_local $4
         (i64.add
          (i64.add
           (i64.mul
            (get_local $4)
            (i64.const 10)
           )
           (i64.shr_s
            (i64.shl
             (i64.extend_u/i32
              (get_local $2)
             )
             (i64.const 56)
            )
            (i64.const 56)
           )
          )
          (i64.const -48)
         )
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $label$4
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
       (br $label$2)
      )
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (set_local $2
      (i32.load
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $4
      (i64.const 0)
     )
     (set_local $0
      (i32.const 0)
     )
     (loop $label$6
      (block $label$7
       (br_if $label$7
        (i32.lt_s
         (i32.load8_s
          (i32.add
           (get_local $2)
           (get_local $0)
          )
         )
         (i32.const 48)
        )
       )
       (br_if $label$7
        (i32.gt_s
         (i32.load8_s
          (i32.add
           (i32.load
            (get_local $1)
           )
           (get_local $0)
          )
         )
         (i32.const 57)
        )
       )
       (set_local $4
        (i64.add
         (i64.add
          (i64.mul
           (get_local $4)
           (i64.const 10)
          )
          (i64.load8_s
           (i32.add
            (i32.load
             (get_local $1)
            )
            (get_local $0)
           )
          )
         )
         (i64.const -48)
        )
       )
      )
      (br_if $label$6
       (i32.lt_u
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $4)
    )
   )
   (return
    (i64.const 0)
   )
  )
  (i64.const 0)
 )
 (func $_Z13string_to_intNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.and
        (tee_local $2
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (br_if $label$1
       (i32.eqz
        (tee_local $2
         (i32.shr_u
          (get_local $2)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $3
       (i64.const 0)
      )
      (loop $label$4
       (set_local $3
        (i64.add
         (i64.mul
          (i64.add
           (get_local $3)
           (i64.load8_s
            (get_local $0)
           )
          )
          (i64.const 10)
         )
         (i64.const -480)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $label$4
        (tee_local $2
         (i32.add
          (get_local $2)
          (i32.const -1)
         )
        )
       )
       (br $label$2)
      )
     )
     (br_if $label$0
      (i32.eqz
       (tee_local $2
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (set_local $1
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
     )
     (set_local $3
      (i64.const 0)
     )
     (set_local $0
      (i32.const 0)
     )
     (loop $label$5
      (set_local $3
       (i64.add
        (i64.mul
         (i64.add
          (get_local $3)
          (i64.load8_s
           (i32.add
            (get_local $1)
            (get_local $0)
           )
          )
         )
         (i64.const 10)
        )
        (i64.const -480)
       )
      )
      (br_if $label$5
       (i32.lt_u
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (get_local $2)
       )
      )
     )
    )
    (return
     (get_local $3)
    )
   )
   (return
    (i64.const 0)
   )
  )
  (i64.const 0)
 )
 (func $_Z13int_to_stringy (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i64.eq
       (get_local $1)
       (i64.const 0)
      )
     )
     (i32.store offset=8
      (get_local $6)
      (i32.const 0)
     )
     (i64.store
      (get_local $6)
      (i64.const 0)
     )
     (loop $label$3
      (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
       (get_local $6)
       (i32.wrap/i64
        (i64.or
         (i64.rem_u
          (get_local $1)
          (i64.const 10)
         )
         (i64.const 48)
        )
       )
      )
      (set_local $2
       (i64.gt_u
        (get_local $1)
        (i64.const 9)
       )
      )
      (set_local $1
       (i64.div_u
        (get_local $1)
        (i64.const 10)
       )
      )
      (br_if $label$3
       (get_local $2)
      )
     )
     (set_local $3
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $5
         (select
          (i32.load offset=4
           (get_local $6)
          )
          (i32.shr_u
           (tee_local $2
            (i32.load8_u
             (get_local $6)
            )
           )
           (i32.const 1)
          )
          (tee_local $2
           (i32.and
            (get_local $2)
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (br_if $label$4
       (i32.le_u
        (tee_local $5
         (i32.add
          (i32.add
           (tee_local $2
            (select
             (i32.load
              (get_local $3)
             )
             (i32.or
              (get_local $6)
              (i32.const 1)
             )
             (get_local $2)
            )
           )
           (get_local $5)
          )
          (i32.const -1)
         )
        )
        (get_local $2)
       )
      )
      (loop $label$5
       (set_local $4
        (i32.load8_u
         (get_local $2)
        )
       )
       (i32.store8
        (get_local $2)
        (i32.load8_u
         (get_local $5)
        )
       )
       (i32.store8
        (get_local $5)
        (get_local $4)
       )
       (br_if $label$5
        (i32.lt_u
         (tee_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (tee_local $5
          (i32.add
           (get_local $5)
           (i32.const -1)
          )
         )
        )
       )
      )
     )
     (i64.store align=4
      (get_local $0)
      (i64.load
       (get_local $6)
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (i32.load
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i64.store align=4
     (get_local $0)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
     (i32.const 0)
    )
    (br_if $label$0
     (i32.ge_u
      (tee_local $2
       (call $strlen
        (i32.const 32)
       )
      )
      (i32.const -16)
     )
    )
    (block $label$6
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.ge_u
         (get_local $2)
         (i32.const 11)
        )
       )
       (i32.store8
        (get_local $0)
        (i32.shl
         (get_local $2)
         (i32.const 1)
        )
       )
       (set_local $5
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $label$7
        (get_local $2)
       )
       (br $label$6)
      )
      (set_local $5
       (call $_Znwj
        (tee_local $4
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const 16)
          )
          (i32.const -16)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.or
        (get_local $4)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (get_local $0)
       (get_local $5)
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $2)
      )
     )
     (drop
      (call $memcpy
       (get_local $5)
       (i32.const 32)
       (get_local $2)
      )
     )
    )
    (i32.store8
     (i32.add
      (get_local $5)
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_Z10cost_tableRKy (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 304)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (block $label$10
             (block $label$11
              (block $label$12
               (block $label$13
                (block $label$14
                 (block $label$15
                  (block $label$16
                   (block $label$17
                    (block $label$18
                     (block $label$19
                      (block $label$20
                       (block $label$21
                        (block $label$22
                         (block $label$23
                          (block $label$24
                           (block $label$25
                            (block $label$26
                             (block $label$27
                              (block $label$28
                               (block $label$29
                                (block $label$30
                                 (block $label$31
                                  (block $label$32
                                   (block $label$33
                                    (block $label$34
                                     (block $label$35
                                      (block $label$36
                                       (block $label$37
                                        (block $label$38
                                         (block $label$39
                                          (block $label$40
                                           (block $label$41
                                            (block $label$42
                                             (block $label$43
                                              (block $label$44
                                               (block $label$45
                                                (block $label$46
                                                 (block $label$47
                                                  (block $label$48
                                                   (block $label$49
                                                    (block $label$50
                                                     (block $label$51
                                                      (block $label$52
                                                       (block $label$53
                                                        (block $label$54
                                                         (block $label$55
                                                          (block $label$56
                                                           (block $label$57
                                                            (block $label$58
                                                             (block $label$59
                                                              (block $label$60
                                                               (block $label$61
                                                                (block $label$62
                                                                 (block $label$63
                                                                  (block $label$64
                                                                   (block $label$65
                                                                    (block $label$66
                                                                     (block $label$67
                                                                      (block $label$68
                                                                       (block $label$69
                                                                        (block $label$70
                                                                         (block $label$71
                                                                          (block $label$72
                                                                           (block $label$73
                                                                            (block $label$74
                                                                             (block $label$75
                                                                              (block $label$76
                                                                               (block $label$77
                                                                                (block $label$78
                                                                                 (block $label$79
                                                                                  (block $label$80
                                                                                   (block $label$81
                                                                                    (block $label$82
                                                                                     (block $label$83
                                                                                      (block $label$84
                                                                                       (block $label$85
                                                                                        (block $label$86
                                                                                         (block $label$87
                                                                                          (block $label$88
                                                                                           (block $label$89
                                                                                            (block $label$90
                                                                                             (block $label$91
                                                                                              (block $label$92
                                                                                               (block $label$93
                                                                                                (block $label$94
                                                                                                 (block $label$95
                                                                                                  (block $label$96
                                                                                                   (block $label$97
                                                                                                    (block $label$98
                                                                                                     (block $label$99
                                                                                                      (block $label$100
                                                                                                       (block $label$101
                                                                                                        (block $label$102
                                                                                                         (br_if $label$102
                                                                                                          (i64.le_u
                                                                                                           (tee_local $3
                                                                                                            (i64.load
                                                                                                             (get_local $1)
                                                                                                            )
                                                                                                           )
                                                                                                           (i64.const 429599)
                                                                                                          )
                                                                                                         )
                                                                                                         (i64.store offset=8
                                                                                                          (get_local $0)
                                                                                                          (i64.const 1397703940)
                                                                                                         )
                                                                                                         (i64.store
                                                                                                          (get_local $0)
                                                                                                          (i64.const 1)
                                                                                                         )
                                                                                                         (call $eosio_assert
                                                                                                          (i32.const 1)
                                                                                                          (i32.const 368)
                                                                                                         )
                                                                                                         (set_local $3
                                                                                                          (i64.shr_u
                                                                                                           (i64.load offset=8
                                                                                                            (get_local $0)
                                                                                                           )
                                                                                                           (i64.const 8)
                                                                                                          )
                                                                                                         )
                                                                                                         (set_local $1
                                                                                                          (i32.const 0)
                                                                                                         )
                                                                                                         (loop $label$103
                                                                                                          (br_if $label$101
                                                                                                           (i32.gt_u
                                                                                                            (i32.add
                                                                                                             (i32.shl
                                                                                                              (i32.wrap/i64
                                                                                                               (get_local $3)
                                                                                                              )
                                                                                                              (i32.const 24)
                                                                                                             )
                                                                                                             (i32.const -1073741825)
                                                                                                            )
                                                                                                            (i32.const 452984830)
                                                                                                           )
                                                                                                          )
                                                                                                          (block $label$104
                                                                                                           (br_if $label$104
                                                                                                            (i64.ne
                                                                                                             (i64.and
                                                                                                              (tee_local $3
                                                                                                               (i64.shr_u
                                                                                                                (get_local $3)
                                                                                                                (i64.const 8)
                                                                                                               )
                                                                                                              )
                                                                                                              (i64.const 255)
                                                                                                             )
                                                                                                             (i64.const 0)
                                                                                                            )
                                                                                                           )
                                                                                                           (loop $label$105
                                                                                                            (br_if $label$101
                                                                                                             (i64.ne
                                                                                                              (i64.and
                                                                                                               (tee_local $3
                                                                                                                (i64.shr_u
                                                                                                                 (get_local $3)
                                                                                                                 (i64.const 8)
                                                                                                                )
                                                                                                               )
                                                                                                               (i64.const 255)
                                                                                                              )
                                                                                                              (i64.const 0)
                                                                                                             )
                                                                                                            )
                                                                                                            (br_if $label$105
                                                                                                             (i32.lt_s
                                                                                                              (tee_local $1
                                                                                                               (i32.add
                                                                                                                (get_local $1)
                                                                                                                (i32.const 1)
                                                                                                               )
                                                                                                              )
                                                                                                              (i32.const 7)
                                                                                                             )
                                                                                                            )
                                                                                                           )
                                                                                                          )
                                                                                                          (set_local $4
                                                                                                           (i32.const 1)
                                                                                                          )
                                                                                                          (br_if $label$103
                                                                                                           (i32.lt_s
                                                                                                            (tee_local $1
                                                                                                             (i32.add
                                                                                                              (get_local $1)
                                                                                                              (i32.const 1)
                                                                                                             )
                                                                                                            )
                                                                                                            (i32.const 7)
                                                                                                           )
                                                                                                          )
                                                                                                          (br $label$100)
                                                                                                         )
                                                                                                        )
                                                                                                        (br_if $label$99
                                                                                                         (i64.lt_u
                                                                                                          (get_local $3)
                                                                                                          (i64.const 408120)
                                                                                                         )
                                                                                                        )
                                                                                                        (i32.store
                                                                                                         (i32.add
                                                                                                          (get_local $5)
                                                                                                          (i32.const 296)
                                                                                                         )
                                                                                                         (i32.const 0)
                                                                                                        )
                                                                                                        (i64.store offset=288
                                                                                                         (get_local $5)
                                                                                                         (i64.const 0)
                                                                                                        )
                                                                                                        (br_if $label$19
                                                                                                         (i32.ge_u
                                                                                                          (tee_local $1
                                                                                                           (call $strlen
                                                                                                            (i32.const 80)
                                                                                                           )
                                                                                                          )
                                                                                                          (i32.const -16)
                                                                                                         )
                                                                                                        )
                                                                                                        (br_if $label$98
                                                                                                         (i32.ge_u
                                                                                                          (get_local $1)
                                                                                                          (i32.const 11)
                                                                                                         )
                                                                                                        )
                                                                                                        (i32.store8 offset=288
                                                                                                         (get_local $5)
                                                                                                         (i32.shl
                                                                                                          (get_local $1)
                                                                                                          (i32.const 1)
                                                                                                         )
                                                                                                        )
                                                                                                        (set_local $4
                                                                                                         (i32.or
                                                                                                          (i32.add
                                                                                                           (get_local $5)
                                                                                                           (i32.const 288)
                                                                                                          )
                                                                                                          (i32.const 1)
                                                                                                         )
                                                                                                        )
                                                                                                        (set_local $2
                                                                                                         (i32.add
                                                                                                          (get_local $5)
                                                                                                          (i32.const 288)
                                                                                                         )
                                                                                                        )
                                                                                                        (br_if $label$97
                                                                                                         (get_local $1)
                                                                                                        )
                                                                                                        (br $label$96)
                                                                                                       )
                                                                                                       (set_local $4
                                                                                                        (i32.const 0)
                                                                                                       )
                                                                                                      )
                                                                                                      (call $eosio_assert
                                                                                                       (get_local $4)
                                                                                                       (i32.const 48)
                                                                                                      )
                                                                                                      (br $label$0)
                                                                                                     )
                                                                                                     (block $label$106
                                                                                                      (br_if $label$106
                                                                                                       (i64.lt_u
                                                                                                        (get_local $3)
                                                                                                        (i64.const 386640)
                                                                                                       )
                                                                                                      )
                                                                                                      (i32.store
                                                                                                       (i32.add
                                                                                                        (get_local $5)
                                                                                                        (i32.const 280)
                                                                                                       )
                                                                                                       (i32.const 0)
                                                                                                      )
                                                                                                      (i64.store offset=272
                                                                                                       (get_local $5)
                                                                                                       (i64.const 0)
                                                                                                      )
                                                                                                      (br_if $label$18
                                                                                                       (i32.ge_u
                                                                                                        (tee_local $1
                                                                                                         (call $strlen
                                                                                                          (i32.const 96)
                                                                                                         )
                                                                                                        )
                                                                                                        (i32.const -16)
                                                                                                       )
                                                                                                      )
                                                                                                      (br_if $label$94
                                                                                                       (i32.ge_u
                                                                                                        (get_local $1)
                                                                                                        (i32.const 11)
                                                                                                       )
                                                                                                      )
                                                                                                      (i32.store8 offset=272
                                                                                                       (get_local $5)
                                                                                                       (i32.shl
                                                                                                        (get_local $1)
                                                                                                        (i32.const 1)
                                                                                                       )
                                                                                                      )
                                                                                                      (set_local $4
                                                                                                       (i32.or
                                                                                                        (i32.add
                                                                                                         (get_local $5)
                                                                                                         (i32.const 272)
                                                                                                        )
                                                                                                        (i32.const 1)
                                                                                                       )
                                                                                                      )
                                                                                                      (set_local $2
                                                                                                       (i32.add
                                                                                                        (get_local $5)
                                                                                                        (i32.const 272)
                                                                                                       )
                                                                                                      )
                                                                                                      (br_if $label$93
                                                                                                       (get_local $1)
                                                                                                      )
                                                                                                      (br $label$92)
                                                                                                     )
                                                                                                     (br_if $label$95
                                                                                                      (i64.lt_u
                                                                                                       (get_local $3)
                                                                                                       (i64.const 365160)
                                                                                                      )
                                                                                                     )
                                                                                                     (i32.store
                                                                                                      (i32.add
                                                                                                       (get_local $5)
                                                                                                       (i32.const 264)
                                                                                                      )
                                                                                                      (i32.const 0)
                                                                                                     )
                                                                                                     (i64.store offset=256
                                                                                                      (get_local $5)
                                                                                                      (i64.const 0)
                                                                                                     )
                                                                                                     (br_if $label$17
                                                                                                      (i32.ge_u
                                                                                                       (tee_local $1
                                                                                                        (call $strlen
                                                                                                         (i32.const 112)
                                                                                                        )
                                                                                                       )
                                                                                                       (i32.const -16)
                                                                                                      )
                                                                                                     )
                                                                                                     (br_if $label$90
                                                                                                      (i32.ge_u
                                                                                                       (get_local $1)
                                                                                                       (i32.const 11)
                                                                                                      )
                                                                                                     )
                                                                                                     (i32.store8 offset=256
                                                                                                      (get_local $5)
                                                                                                      (i32.shl
                                                                                                       (get_local $1)
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $4
                                                                                                      (i32.or
                                                                                                       (i32.add
                                                                                                        (get_local $5)
                                                                                                        (i32.const 256)
                                                                                                       )
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $2
                                                                                                      (i32.add
                                                                                                       (get_local $5)
                                                                                                       (i32.const 256)
                                                                                                      )
                                                                                                     )
                                                                                                     (br_if $label$89
                                                                                                      (get_local $1)
                                                                                                     )
                                                                                                     (br $label$88)
                                                                                                    )
                                                                                                    (set_local $4
                                                                                                     (call $_Znwj
                                                                                                      (tee_local $2
                                                                                                       (i32.and
                                                                                                        (i32.add
                                                                                                         (get_local $1)
                                                                                                         (i32.const 16)
                                                                                                        )
                                                                                                        (i32.const -16)
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                    )
                                                                                                    (i32.store offset=288
                                                                                                     (get_local $5)
                                                                                                     (i32.or
                                                                                                      (get_local $2)
                                                                                                      (i32.const 1)
                                                                                                     )
                                                                                                    )
                                                                                                    (i32.store offset=296
                                                                                                     (get_local $5)
                                                                                                     (get_local $4)
                                                                                                    )
                                                                                                    (i32.store offset=292
                                                                                                     (get_local $5)
                                                                                                     (get_local $1)
                                                                                                    )
                                                                                                    (set_local $2
                                                                                                     (i32.add
                                                                                                      (get_local $5)
                                                                                                      (i32.const 288)
                                                                                                     )
                                                                                                    )
                                                                                                   )
                                                                                                   (drop
                                                                                                    (call $memcpy
                                                                                                     (get_local $4)
                                                                                                     (i32.const 80)
                                                                                                     (get_local $1)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                  (i32.store8
                                                                                                   (i32.add
                                                                                                    (get_local $4)
                                                                                                    (get_local $1)
                                                                                                   )
                                                                                                   (i32.const 0)
                                                                                                  )
                                                                                                  (block $label$107
                                                                                                   (block $label$108
                                                                                                    (block $label$109
                                                                                                     (br_if $label$109
                                                                                                      (i32.and
                                                                                                       (tee_local $1
                                                                                                        (i32.load8_u offset=288
                                                                                                         (get_local $5)
                                                                                                        )
                                                                                                       )
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (br_if $label$108
                                                                                                      (i32.eqz
                                                                                                       (tee_local $4
                                                                                                        (i32.shr_u
                                                                                                         (get_local $1)
                                                                                                         (i32.const 1)
                                                                                                        )
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $1
                                                                                                      (i32.add
                                                                                                       (get_local $2)
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $3
                                                                                                      (i64.const 0)
                                                                                                     )
                                                                                                     (loop $label$110
                                                                                                      (block $label$111
                                                                                                       (br_if $label$111
                                                                                                        (i32.gt_u
                                                                                                         (i32.and
                                                                                                          (i32.add
                                                                                                           (tee_local $2
                                                                                                            (i32.load8_u
                                                                                                             (get_local $1)
                                                                                                            )
                                                                                                           )
                                                                                                           (i32.const -48)
                                                                                                          )
                                                                                                          (i32.const 255)
                                                                                                         )
                                                                                                         (i32.const 9)
                                                                                                        )
                                                                                                       )
                                                                                                       (set_local $3
                                                                                                        (i64.add
                                                                                                         (i64.add
                                                                                                          (i64.mul
                                                                                                           (get_local $3)
                                                                                                           (i64.const 10)
                                                                                                          )
                                                                                                          (i64.shr_s
                                                                                                           (i64.shl
                                                                                                            (i64.extend_u/i32
                                                                                                             (get_local $2)
                                                                                                            )
                                                                                                            (i64.const 56)
                                                                                                           )
                                                                                                           (i64.const 56)
                                                                                                          )
                                                                                                         )
                                                                                                         (i64.const -48)
                                                                                                        )
                                                                                                       )
                                                                                                      )
                                                                                                      (set_local $1
                                                                                                       (i32.add
                                                                                                        (get_local $1)
                                                                                                        (i32.const 1)
                                                                                                       )
                                                                                                      )
                                                                                                      (br_if $label$110
                                                                                                       (tee_local $4
                                                                                                        (i32.add
                                                                                                         (get_local $4)
                                                                                                         (i32.const -1)
                                                                                                        )
                                                                                                       )
                                                                                                      )
                                                                                                      (br $label$107)
                                                                                                     )
                                                                                                    )
                                                                                                    (br_if $label$108
                                                                                                     (i32.eqz
                                                                                                      (tee_local $4
                                                                                                       (i32.load offset=292
                                                                                                        (get_local $5)
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                    )
                                                                                                    (set_local $1
                                                                                                     (i32.load
                                                                                                      (i32.add
                                                                                                       (get_local $5)
                                                                                                       (i32.const 296)
                                                                                                      )
                                                                                                     )
                                                                                                    )
                                                                                                    (set_local $3
                                                                                                     (i64.const 0)
                                                                                                    )
                                                                                                    (loop $label$112
                                                                                                     (block $label$113
                                                                                                      (br_if $label$113
                                                                                                       (i32.gt_u
                                                                                                        (i32.and
                                                                                                         (i32.add
                                                                                                          (tee_local $2
                                                                                                           (i32.load8_u
                                                                                                            (get_local $1)
                                                                                                           )
                                                                                                          )
                                                                                                          (i32.const -48)
                                                                                                         )
                                                                                                         (i32.const 255)
                                                                                                        )
                                                                                                        (i32.const 9)
                                                                                                       )
                                                                                                      )
                                                                                                      (set_local $3
                                                                                                       (i64.add
                                                                                                        (i64.add
                                                                                                         (i64.mul
                                                                                                          (get_local $3)
                                                                                                          (i64.const 10)
                                                                                                         )
                                                                                                         (i64.shr_s
                                                                                                          (i64.shl
                                                                                                           (i64.extend_u/i32
                                                                                                            (get_local $2)
                                                                                                           )
                                                                                                           (i64.const 56)
                                                                                                          )
                                                                                                          (i64.const 56)
                                                                                                         )
                                                                                                        )
                                                                                                        (i64.const -48)
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $1
                                                                                                      (i32.add
                                                                                                       (get_local $1)
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (br_if $label$112
                                                                                                      (tee_local $4
                                                                                                       (i32.add
                                                                                                        (get_local $4)
                                                                                                        (i32.const -1)
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                     (br $label$107)
                                                                                                    )
                                                                                                   )
                                                                                                   (set_local $3
                                                                                                    (i64.const 0)
                                                                                                   )
                                                                                                  )
                                                                                                  (i64.store offset=8
                                                                                                   (get_local $0)
                                                                                                   (i64.const 1397703940)
                                                                                                  )
                                                                                                  (i64.store
                                                                                                   (get_local $0)
                                                                                                   (get_local $3)
                                                                                                  )
                                                                                                  (call $eosio_assert
                                                                                                   (i64.lt_u
                                                                                                    (i64.add
                                                                                                     (get_local $3)
                                                                                                     (i64.const 4611686018427387903)
                                                                                                    )
                                                                                                    (i64.const 9223372036854775807)
                                                                                                   )
                                                                                                   (i32.const 368)
                                                                                                  )
                                                                                                  (set_local $3
                                                                                                   (i64.shr_u
                                                                                                    (i64.load offset=8
                                                                                                     (get_local $0)
                                                                                                    )
                                                                                                    (i64.const 8)
                                                                                                   )
                                                                                                  )
                                                                                                  (set_local $1
                                                                                                   (i32.const 0)
                                                                                                  )
                                                                                                  (block $label$114
                                                                                                   (block $label$115
                                                                                                    (loop $label$116
                                                                                                     (br_if $label$115
                                                                                                      (i32.gt_u
                                                                                                       (i32.add
                                                                                                        (i32.shl
                                                                                                         (i32.wrap/i64
                                                                                                          (get_local $3)
                                                                                                         )
                                                                                                         (i32.const 24)
                                                                                                        )
                                                                                                        (i32.const -1073741825)
                                                                                                       )
                                                                                                       (i32.const 452984830)
                                                                                                      )
                                                                                                     )
                                                                                                     (block $label$117
                                                                                                      (br_if $label$117
                                                                                                       (i64.ne
                                                                                                        (i64.and
                                                                                                         (tee_local $3
                                                                                                          (i64.shr_u
                                                                                                           (get_local $3)
                                                                                                           (i64.const 8)
                                                                                                          )
                                                                                                         )
                                                                                                         (i64.const 255)
                                                                                                        )
                                                                                                        (i64.const 0)
                                                                                                       )
                                                                                                      )
                                                                                                      (loop $label$118
                                                                                                       (br_if $label$115
                                                                                                        (i64.ne
                                                                                                         (i64.and
                                                                                                          (tee_local $3
                                                                                                           (i64.shr_u
                                                                                                            (get_local $3)
                                                                                                            (i64.const 8)
                                                                                                           )
                                                                                                          )
                                                                                                          (i64.const 255)
                                                                                                         )
                                                                                                         (i64.const 0)
                                                                                                        )
                                                                                                       )
                                                                                                       (br_if $label$118
                                                                                                        (i32.lt_s
                                                                                                         (tee_local $1
                                                                                                          (i32.add
                                                                                                           (get_local $1)
                                                                                                           (i32.const 1)
                                                                                                          )
                                                                                                         )
                                                                                                         (i32.const 7)
                                                                                                        )
                                                                                                       )
                                                                                                      )
                                                                                                     )
                                                                                                     (set_local $4
                                                                                                      (i32.const 1)
                                                                                                     )
                                                                                                     (br_if $label$116
                                                                                                      (i32.lt_s
                                                                                                       (tee_local $1
                                                                                                        (i32.add
                                                                                                         (get_local $1)
                                                                                                         (i32.const 1)
                                                                                                        )
                                                                                                       )
                                                                                                       (i32.const 7)
                                                                                                      )
                                                                                                     )
                                                                                                     (br $label$114)
                                                                                                    )
                                                                                                   )
                                                                                                   (set_local $4
                                                                                                    (i32.const 0)
                                                                                                   )
                                                                                                  )
                                                                                                  (call $eosio_assert
                                                                                                   (get_local $4)
                                                                                                   (i32.const 48)
                                                                                                  )
                                                                                                  (br_if $label$0
                                                                                                   (i32.eqz
                                                                                                    (i32.and
                                                                                                     (i32.load8_u offset=288
                                                                                                      (get_local $5)
                                                                                                     )
                                                                                                     (i32.const 1)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                  (call $_ZdlPv
                                                                                                   (i32.load
                                                                                                    (i32.add
                                                                                                     (get_local $5)
                                                                                                     (i32.const 296)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                  (br $label$0)
                                                                                                 )
                                                                                                 (br_if $label$91
                                                                                                  (i64.lt_u
                                                                                                   (get_local $3)
                                                                                                   (i64.const 343680)
                                                                                                  )
                                                                                                 )
                                                                                                 (i32.store
                                                                                                  (i32.add
                                                                                                   (get_local $5)
                                                                                                   (i32.const 248)
                                                                                                  )
                                                                                                  (i32.const 0)
                                                                                                 )
                                                                                                 (i64.store offset=240
                                                                                                  (get_local $5)
                                                                                                  (i64.const 0)
                                                                                                 )
                                                                                                 (br_if $label$16
                                                                                                  (i32.ge_u
                                                                                                   (tee_local $1
                                                                                                    (call $strlen
                                                                                                     (i32.const 128)
                                                                                                    )
                                                                                                   )
                                                                                                   (i32.const -16)
                                                                                                  )
                                                                                                 )
                                                                                                 (br_if $label$86
                                                                                                  (i32.ge_u
                                                                                                   (get_local $1)
                                                                                                   (i32.const 11)
                                                                                                  )
                                                                                                 )
                                                                                                 (i32.store8 offset=240
                                                                                                  (get_local $5)
                                                                                                  (i32.shl
                                                                                                   (get_local $1)
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $4
                                                                                                  (i32.or
                                                                                                   (i32.add
                                                                                                    (get_local $5)
                                                                                                    (i32.const 240)
                                                                                                   )
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $2
                                                                                                  (i32.add
                                                                                                   (get_local $5)
                                                                                                   (i32.const 240)
                                                                                                  )
                                                                                                 )
                                                                                                 (br_if $label$85
                                                                                                  (get_local $1)
                                                                                                 )
                                                                                                 (br $label$84)
                                                                                                )
                                                                                                (set_local $4
                                                                                                 (call $_Znwj
                                                                                                  (tee_local $2
                                                                                                   (i32.and
                                                                                                    (i32.add
                                                                                                     (get_local $1)
                                                                                                     (i32.const 16)
                                                                                                    )
                                                                                                    (i32.const -16)
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                )
                                                                                                (i32.store offset=272
                                                                                                 (get_local $5)
                                                                                                 (i32.or
                                                                                                  (get_local $2)
                                                                                                  (i32.const 1)
                                                                                                 )
                                                                                                )
                                                                                                (i32.store offset=280
                                                                                                 (get_local $5)
                                                                                                 (get_local $4)
                                                                                                )
                                                                                                (i32.store offset=276
                                                                                                 (get_local $5)
                                                                                                 (get_local $1)
                                                                                                )
                                                                                                (set_local $2
                                                                                                 (i32.add
                                                                                                  (get_local $5)
                                                                                                  (i32.const 272)
                                                                                                 )
                                                                                                )
                                                                                               )
                                                                                               (drop
                                                                                                (call $memcpy
                                                                                                 (get_local $4)
                                                                                                 (i32.const 96)
                                                                                                 (get_local $1)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                              (i32.store8
                                                                                               (i32.add
                                                                                                (get_local $4)
                                                                                                (get_local $1)
                                                                                               )
                                                                                               (i32.const 0)
                                                                                              )
                                                                                              (block $label$119
                                                                                               (block $label$120
                                                                                                (block $label$121
                                                                                                 (br_if $label$121
                                                                                                  (i32.and
                                                                                                   (tee_local $1
                                                                                                    (i32.load8_u offset=272
                                                                                                     (get_local $5)
                                                                                                    )
                                                                                                   )
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (br_if $label$120
                                                                                                  (i32.eqz
                                                                                                   (tee_local $4
                                                                                                    (i32.shr_u
                                                                                                     (get_local $1)
                                                                                                     (i32.const 1)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $1
                                                                                                  (i32.add
                                                                                                   (get_local $2)
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $3
                                                                                                  (i64.const 0)
                                                                                                 )
                                                                                                 (loop $label$122
                                                                                                  (block $label$123
                                                                                                   (br_if $label$123
                                                                                                    (i32.gt_u
                                                                                                     (i32.and
                                                                                                      (i32.add
                                                                                                       (tee_local $2
                                                                                                        (i32.load8_u
                                                                                                         (get_local $1)
                                                                                                        )
                                                                                                       )
                                                                                                       (i32.const -48)
                                                                                                      )
                                                                                                      (i32.const 255)
                                                                                                     )
                                                                                                     (i32.const 9)
                                                                                                    )
                                                                                                   )
                                                                                                   (set_local $3
                                                                                                    (i64.add
                                                                                                     (i64.add
                                                                                                      (i64.mul
                                                                                                       (get_local $3)
                                                                                                       (i64.const 10)
                                                                                                      )
                                                                                                      (i64.shr_s
                                                                                                       (i64.shl
                                                                                                        (i64.extend_u/i32
                                                                                                         (get_local $2)
                                                                                                        )
                                                                                                        (i64.const 56)
                                                                                                       )
                                                                                                       (i64.const 56)
                                                                                                      )
                                                                                                     )
                                                                                                     (i64.const -48)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                  (set_local $1
                                                                                                   (i32.add
                                                                                                    (get_local $1)
                                                                                                    (i32.const 1)
                                                                                                   )
                                                                                                  )
                                                                                                  (br_if $label$122
                                                                                                   (tee_local $4
                                                                                                    (i32.add
                                                                                                     (get_local $4)
                                                                                                     (i32.const -1)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                  (br $label$119)
                                                                                                 )
                                                                                                )
                                                                                                (br_if $label$120
                                                                                                 (i32.eqz
                                                                                                  (tee_local $4
                                                                                                   (i32.load offset=276
                                                                                                    (get_local $5)
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                )
                                                                                                (set_local $1
                                                                                                 (i32.load
                                                                                                  (i32.add
                                                                                                   (get_local $5)
                                                                                                   (i32.const 280)
                                                                                                  )
                                                                                                 )
                                                                                                )
                                                                                                (set_local $3
                                                                                                 (i64.const 0)
                                                                                                )
                                                                                                (loop $label$124
                                                                                                 (block $label$125
                                                                                                  (br_if $label$125
                                                                                                   (i32.gt_u
                                                                                                    (i32.and
                                                                                                     (i32.add
                                                                                                      (tee_local $2
                                                                                                       (i32.load8_u
                                                                                                        (get_local $1)
                                                                                                       )
                                                                                                      )
                                                                                                      (i32.const -48)
                                                                                                     )
                                                                                                     (i32.const 255)
                                                                                                    )
                                                                                                    (i32.const 9)
                                                                                                   )
                                                                                                  )
                                                                                                  (set_local $3
                                                                                                   (i64.add
                                                                                                    (i64.add
                                                                                                     (i64.mul
                                                                                                      (get_local $3)
                                                                                                      (i64.const 10)
                                                                                                     )
                                                                                                     (i64.shr_s
                                                                                                      (i64.shl
                                                                                                       (i64.extend_u/i32
                                                                                                        (get_local $2)
                                                                                                       )
                                                                                                       (i64.const 56)
                                                                                                      )
                                                                                                      (i64.const 56)
                                                                                                     )
                                                                                                    )
                                                                                                    (i64.const -48)
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $1
                                                                                                  (i32.add
                                                                                                   (get_local $1)
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (br_if $label$124
                                                                                                  (tee_local $4
                                                                                                   (i32.add
                                                                                                    (get_local $4)
                                                                                                    (i32.const -1)
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                 (br $label$119)
                                                                                                )
                                                                                               )
                                                                                               (set_local $3
                                                                                                (i64.const 0)
                                                                                               )
                                                                                              )
                                                                                              (i64.store offset=8
                                                                                               (get_local $0)
                                                                                               (i64.const 1397703940)
                                                                                              )
                                                                                              (i64.store
                                                                                               (get_local $0)
                                                                                               (get_local $3)
                                                                                              )
                                                                                              (call $eosio_assert
                                                                                               (i64.lt_u
                                                                                                (i64.add
                                                                                                 (get_local $3)
                                                                                                 (i64.const 4611686018427387903)
                                                                                                )
                                                                                                (i64.const 9223372036854775807)
                                                                                               )
                                                                                               (i32.const 368)
                                                                                              )
                                                                                              (set_local $3
                                                                                               (i64.shr_u
                                                                                                (i64.load offset=8
                                                                                                 (get_local $0)
                                                                                                )
                                                                                                (i64.const 8)
                                                                                               )
                                                                                              )
                                                                                              (set_local $1
                                                                                               (i32.const 0)
                                                                                              )
                                                                                              (block $label$126
                                                                                               (block $label$127
                                                                                                (loop $label$128
                                                                                                 (br_if $label$127
                                                                                                  (i32.gt_u
                                                                                                   (i32.add
                                                                                                    (i32.shl
                                                                                                     (i32.wrap/i64
                                                                                                      (get_local $3)
                                                                                                     )
                                                                                                     (i32.const 24)
                                                                                                    )
                                                                                                    (i32.const -1073741825)
                                                                                                   )
                                                                                                   (i32.const 452984830)
                                                                                                  )
                                                                                                 )
                                                                                                 (block $label$129
                                                                                                  (br_if $label$129
                                                                                                   (i64.ne
                                                                                                    (i64.and
                                                                                                     (tee_local $3
                                                                                                      (i64.shr_u
                                                                                                       (get_local $3)
                                                                                                       (i64.const 8)
                                                                                                      )
                                                                                                     )
                                                                                                     (i64.const 255)
                                                                                                    )
                                                                                                    (i64.const 0)
                                                                                                   )
                                                                                                  )
                                                                                                  (loop $label$130
                                                                                                   (br_if $label$127
                                                                                                    (i64.ne
                                                                                                     (i64.and
                                                                                                      (tee_local $3
                                                                                                       (i64.shr_u
                                                                                                        (get_local $3)
                                                                                                        (i64.const 8)
                                                                                                       )
                                                                                                      )
                                                                                                      (i64.const 255)
                                                                                                     )
                                                                                                     (i64.const 0)
                                                                                                    )
                                                                                                   )
                                                                                                   (br_if $label$130
                                                                                                    (i32.lt_s
                                                                                                     (tee_local $1
                                                                                                      (i32.add
                                                                                                       (get_local $1)
                                                                                                       (i32.const 1)
                                                                                                      )
                                                                                                     )
                                                                                                     (i32.const 7)
                                                                                                    )
                                                                                                   )
                                                                                                  )
                                                                                                 )
                                                                                                 (set_local $4
                                                                                                  (i32.const 1)
                                                                                                 )
                                                                                                 (br_if $label$128
                                                                                                  (i32.lt_s
                                                                                                   (tee_local $1
                                                                                                    (i32.add
                                                                                                     (get_local $1)
                                                                                                     (i32.const 1)
                                                                                                    )
                                                                                                   )
                                                                                                   (i32.const 7)
                                                                                                  )
                                                                                                 )
                                                                                                 (br $label$126)
                                                                                                )
                                                                                               )
                                                                                               (set_local $4
                                                                                                (i32.const 0)
                                                                                               )
                                                                                              )
                                                                                              (call $eosio_assert
                                                                                               (get_local $4)
                                                                                               (i32.const 48)
                                                                                              )
                                                                                              (br_if $label$0
                                                                                               (i32.eqz
                                                                                                (i32.and
                                                                                                 (i32.load8_u offset=272
                                                                                                  (get_local $5)
                                                                                                 )
                                                                                                 (i32.const 1)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                              (call $_ZdlPv
                                                                                               (i32.load
                                                                                                (i32.add
                                                                                                 (get_local $5)
                                                                                                 (i32.const 280)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                              (br $label$0)
                                                                                             )
                                                                                             (br_if $label$87
                                                                                              (i64.lt_u
                                                                                               (get_local $3)
                                                                                               (i64.const 322200)
                                                                                              )
                                                                                             )
                                                                                             (i32.store
                                                                                              (i32.add
                                                                                               (get_local $5)
                                                                                               (i32.const 232)
                                                                                              )
                                                                                              (i32.const 0)
                                                                                             )
                                                                                             (i64.store offset=224
                                                                                              (get_local $5)
                                                                                              (i64.const 0)
                                                                                             )
                                                                                             (br_if $label$15
                                                                                              (i32.ge_u
                                                                                               (tee_local $1
                                                                                                (call $strlen
                                                                                                 (i32.const 144)
                                                                                                )
                                                                                               )
                                                                                               (i32.const -16)
                                                                                              )
                                                                                             )
                                                                                             (br_if $label$82
                                                                                              (i32.ge_u
                                                                                               (get_local $1)
                                                                                               (i32.const 11)
                                                                                              )
                                                                                             )
                                                                                             (i32.store8 offset=224
                                                                                              (get_local $5)
                                                                                              (i32.shl
                                                                                               (get_local $1)
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (set_local $4
                                                                                              (i32.or
                                                                                               (i32.add
                                                                                                (get_local $5)
                                                                                                (i32.const 224)
                                                                                               )
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (set_local $2
                                                                                              (i32.add
                                                                                               (get_local $5)
                                                                                               (i32.const 224)
                                                                                              )
                                                                                             )
                                                                                             (br_if $label$81
                                                                                              (get_local $1)
                                                                                             )
                                                                                             (br $label$80)
                                                                                            )
                                                                                            (set_local $4
                                                                                             (call $_Znwj
                                                                                              (tee_local $2
                                                                                               (i32.and
                                                                                                (i32.add
                                                                                                 (get_local $1)
                                                                                                 (i32.const 16)
                                                                                                )
                                                                                                (i32.const -16)
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                            )
                                                                                            (i32.store offset=256
                                                                                             (get_local $5)
                                                                                             (i32.or
                                                                                              (get_local $2)
                                                                                              (i32.const 1)
                                                                                             )
                                                                                            )
                                                                                            (i32.store offset=264
                                                                                             (get_local $5)
                                                                                             (get_local $4)
                                                                                            )
                                                                                            (i32.store offset=260
                                                                                             (get_local $5)
                                                                                             (get_local $1)
                                                                                            )
                                                                                            (set_local $2
                                                                                             (i32.add
                                                                                              (get_local $5)
                                                                                              (i32.const 256)
                                                                                             )
                                                                                            )
                                                                                           )
                                                                                           (drop
                                                                                            (call $memcpy
                                                                                             (get_local $4)
                                                                                             (i32.const 112)
                                                                                             (get_local $1)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                          (i32.store8
                                                                                           (i32.add
                                                                                            (get_local $4)
                                                                                            (get_local $1)
                                                                                           )
                                                                                           (i32.const 0)
                                                                                          )
                                                                                          (block $label$131
                                                                                           (block $label$132
                                                                                            (block $label$133
                                                                                             (br_if $label$133
                                                                                              (i32.and
                                                                                               (tee_local $1
                                                                                                (i32.load8_u offset=256
                                                                                                 (get_local $5)
                                                                                                )
                                                                                               )
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (br_if $label$132
                                                                                              (i32.eqz
                                                                                               (tee_local $4
                                                                                                (i32.shr_u
                                                                                                 (get_local $1)
                                                                                                 (i32.const 1)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                             (set_local $1
                                                                                              (i32.add
                                                                                               (get_local $2)
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (set_local $3
                                                                                              (i64.const 0)
                                                                                             )
                                                                                             (loop $label$134
                                                                                              (block $label$135
                                                                                               (br_if $label$135
                                                                                                (i32.gt_u
                                                                                                 (i32.and
                                                                                                  (i32.add
                                                                                                   (tee_local $2
                                                                                                    (i32.load8_u
                                                                                                     (get_local $1)
                                                                                                    )
                                                                                                   )
                                                                                                   (i32.const -48)
                                                                                                  )
                                                                                                  (i32.const 255)
                                                                                                 )
                                                                                                 (i32.const 9)
                                                                                                )
                                                                                               )
                                                                                               (set_local $3
                                                                                                (i64.add
                                                                                                 (i64.add
                                                                                                  (i64.mul
                                                                                                   (get_local $3)
                                                                                                   (i64.const 10)
                                                                                                  )
                                                                                                  (i64.shr_s
                                                                                                   (i64.shl
                                                                                                    (i64.extend_u/i32
                                                                                                     (get_local $2)
                                                                                                    )
                                                                                                    (i64.const 56)
                                                                                                   )
                                                                                                   (i64.const 56)
                                                                                                  )
                                                                                                 )
                                                                                                 (i64.const -48)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                              (set_local $1
                                                                                               (i32.add
                                                                                                (get_local $1)
                                                                                                (i32.const 1)
                                                                                               )
                                                                                              )
                                                                                              (br_if $label$134
                                                                                               (tee_local $4
                                                                                                (i32.add
                                                                                                 (get_local $4)
                                                                                                 (i32.const -1)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                              (br $label$131)
                                                                                             )
                                                                                            )
                                                                                            (br_if $label$132
                                                                                             (i32.eqz
                                                                                              (tee_local $4
                                                                                               (i32.load offset=260
                                                                                                (get_local $5)
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                            )
                                                                                            (set_local $1
                                                                                             (i32.load
                                                                                              (i32.add
                                                                                               (get_local $5)
                                                                                               (i32.const 264)
                                                                                              )
                                                                                             )
                                                                                            )
                                                                                            (set_local $3
                                                                                             (i64.const 0)
                                                                                            )
                                                                                            (loop $label$136
                                                                                             (block $label$137
                                                                                              (br_if $label$137
                                                                                               (i32.gt_u
                                                                                                (i32.and
                                                                                                 (i32.add
                                                                                                  (tee_local $2
                                                                                                   (i32.load8_u
                                                                                                    (get_local $1)
                                                                                                   )
                                                                                                  )
                                                                                                  (i32.const -48)
                                                                                                 )
                                                                                                 (i32.const 255)
                                                                                                )
                                                                                                (i32.const 9)
                                                                                               )
                                                                                              )
                                                                                              (set_local $3
                                                                                               (i64.add
                                                                                                (i64.add
                                                                                                 (i64.mul
                                                                                                  (get_local $3)
                                                                                                  (i64.const 10)
                                                                                                 )
                                                                                                 (i64.shr_s
                                                                                                  (i64.shl
                                                                                                   (i64.extend_u/i32
                                                                                                    (get_local $2)
                                                                                                   )
                                                                                                   (i64.const 56)
                                                                                                  )
                                                                                                  (i64.const 56)
                                                                                                 )
                                                                                                )
                                                                                                (i64.const -48)
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                             (set_local $1
                                                                                              (i32.add
                                                                                               (get_local $1)
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (br_if $label$136
                                                                                              (tee_local $4
                                                                                               (i32.add
                                                                                                (get_local $4)
                                                                                                (i32.const -1)
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                             (br $label$131)
                                                                                            )
                                                                                           )
                                                                                           (set_local $3
                                                                                            (i64.const 0)
                                                                                           )
                                                                                          )
                                                                                          (i64.store offset=8
                                                                                           (get_local $0)
                                                                                           (i64.const 1397703940)
                                                                                          )
                                                                                          (i64.store
                                                                                           (get_local $0)
                                                                                           (get_local $3)
                                                                                          )
                                                                                          (call $eosio_assert
                                                                                           (i64.lt_u
                                                                                            (i64.add
                                                                                             (get_local $3)
                                                                                             (i64.const 4611686018427387903)
                                                                                            )
                                                                                            (i64.const 9223372036854775807)
                                                                                           )
                                                                                           (i32.const 368)
                                                                                          )
                                                                                          (set_local $3
                                                                                           (i64.shr_u
                                                                                            (i64.load offset=8
                                                                                             (get_local $0)
                                                                                            )
                                                                                            (i64.const 8)
                                                                                           )
                                                                                          )
                                                                                          (set_local $1
                                                                                           (i32.const 0)
                                                                                          )
                                                                                          (block $label$138
                                                                                           (block $label$139
                                                                                            (loop $label$140
                                                                                             (br_if $label$139
                                                                                              (i32.gt_u
                                                                                               (i32.add
                                                                                                (i32.shl
                                                                                                 (i32.wrap/i64
                                                                                                  (get_local $3)
                                                                                                 )
                                                                                                 (i32.const 24)
                                                                                                )
                                                                                                (i32.const -1073741825)
                                                                                               )
                                                                                               (i32.const 452984830)
                                                                                              )
                                                                                             )
                                                                                             (block $label$141
                                                                                              (br_if $label$141
                                                                                               (i64.ne
                                                                                                (i64.and
                                                                                                 (tee_local $3
                                                                                                  (i64.shr_u
                                                                                                   (get_local $3)
                                                                                                   (i64.const 8)
                                                                                                  )
                                                                                                 )
                                                                                                 (i64.const 255)
                                                                                                )
                                                                                                (i64.const 0)
                                                                                               )
                                                                                              )
                                                                                              (loop $label$142
                                                                                               (br_if $label$139
                                                                                                (i64.ne
                                                                                                 (i64.and
                                                                                                  (tee_local $3
                                                                                                   (i64.shr_u
                                                                                                    (get_local $3)
                                                                                                    (i64.const 8)
                                                                                                   )
                                                                                                  )
                                                                                                  (i64.const 255)
                                                                                                 )
                                                                                                 (i64.const 0)
                                                                                                )
                                                                                               )
                                                                                               (br_if $label$142
                                                                                                (i32.lt_s
                                                                                                 (tee_local $1
                                                                                                  (i32.add
                                                                                                   (get_local $1)
                                                                                                   (i32.const 1)
                                                                                                  )
                                                                                                 )
                                                                                                 (i32.const 7)
                                                                                                )
                                                                                               )
                                                                                              )
                                                                                             )
                                                                                             (set_local $4
                                                                                              (i32.const 1)
                                                                                             )
                                                                                             (br_if $label$140
                                                                                              (i32.lt_s
                                                                                               (tee_local $1
                                                                                                (i32.add
                                                                                                 (get_local $1)
                                                                                                 (i32.const 1)
                                                                                                )
                                                                                               )
                                                                                               (i32.const 7)
                                                                                              )
                                                                                             )
                                                                                             (br $label$138)
                                                                                            )
                                                                                           )
                                                                                           (set_local $4
                                                                                            (i32.const 0)
                                                                                           )
                                                                                          )
                                                                                          (call $eosio_assert
                                                                                           (get_local $4)
                                                                                           (i32.const 48)
                                                                                          )
                                                                                          (br_if $label$0
                                                                                           (i32.eqz
                                                                                            (i32.and
                                                                                             (i32.load8_u offset=256
                                                                                              (get_local $5)
                                                                                             )
                                                                                             (i32.const 1)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                          (call $_ZdlPv
                                                                                           (i32.load
                                                                                            (i32.add
                                                                                             (get_local $5)
                                                                                             (i32.const 264)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                          (br $label$0)
                                                                                         )
                                                                                         (br_if $label$83
                                                                                          (i64.lt_u
                                                                                           (get_local $3)
                                                                                           (i64.const 279240)
                                                                                          )
                                                                                         )
                                                                                         (i32.store
                                                                                          (i32.add
                                                                                           (get_local $5)
                                                                                           (i32.const 216)
                                                                                          )
                                                                                          (i32.const 0)
                                                                                         )
                                                                                         (i64.store offset=208
                                                                                          (get_local $5)
                                                                                          (i64.const 0)
                                                                                         )
                                                                                         (br_if $label$14
                                                                                          (i32.ge_u
                                                                                           (tee_local $1
                                                                                            (call $strlen
                                                                                             (i32.const 160)
                                                                                            )
                                                                                           )
                                                                                           (i32.const -16)
                                                                                          )
                                                                                         )
                                                                                         (br_if $label$78
                                                                                          (i32.ge_u
                                                                                           (get_local $1)
                                                                                           (i32.const 11)
                                                                                          )
                                                                                         )
                                                                                         (i32.store8 offset=208
                                                                                          (get_local $5)
                                                                                          (i32.shl
                                                                                           (get_local $1)
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (set_local $4
                                                                                          (i32.or
                                                                                           (i32.add
                                                                                            (get_local $5)
                                                                                            (i32.const 208)
                                                                                           )
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (set_local $2
                                                                                          (i32.add
                                                                                           (get_local $5)
                                                                                           (i32.const 208)
                                                                                          )
                                                                                         )
                                                                                         (br_if $label$77
                                                                                          (get_local $1)
                                                                                         )
                                                                                         (br $label$76)
                                                                                        )
                                                                                        (set_local $4
                                                                                         (call $_Znwj
                                                                                          (tee_local $2
                                                                                           (i32.and
                                                                                            (i32.add
                                                                                             (get_local $1)
                                                                                             (i32.const 16)
                                                                                            )
                                                                                            (i32.const -16)
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                        )
                                                                                        (i32.store offset=240
                                                                                         (get_local $5)
                                                                                         (i32.or
                                                                                          (get_local $2)
                                                                                          (i32.const 1)
                                                                                         )
                                                                                        )
                                                                                        (i32.store offset=248
                                                                                         (get_local $5)
                                                                                         (get_local $4)
                                                                                        )
                                                                                        (i32.store offset=244
                                                                                         (get_local $5)
                                                                                         (get_local $1)
                                                                                        )
                                                                                        (set_local $2
                                                                                         (i32.add
                                                                                          (get_local $5)
                                                                                          (i32.const 240)
                                                                                         )
                                                                                        )
                                                                                       )
                                                                                       (drop
                                                                                        (call $memcpy
                                                                                         (get_local $4)
                                                                                         (i32.const 128)
                                                                                         (get_local $1)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                      (i32.store8
                                                                                       (i32.add
                                                                                        (get_local $4)
                                                                                        (get_local $1)
                                                                                       )
                                                                                       (i32.const 0)
                                                                                      )
                                                                                      (block $label$143
                                                                                       (block $label$144
                                                                                        (block $label$145
                                                                                         (br_if $label$145
                                                                                          (i32.and
                                                                                           (tee_local $1
                                                                                            (i32.load8_u offset=240
                                                                                             (get_local $5)
                                                                                            )
                                                                                           )
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (br_if $label$144
                                                                                          (i32.eqz
                                                                                           (tee_local $4
                                                                                            (i32.shr_u
                                                                                             (get_local $1)
                                                                                             (i32.const 1)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                         (set_local $1
                                                                                          (i32.add
                                                                                           (get_local $2)
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (set_local $3
                                                                                          (i64.const 0)
                                                                                         )
                                                                                         (loop $label$146
                                                                                          (block $label$147
                                                                                           (br_if $label$147
                                                                                            (i32.gt_u
                                                                                             (i32.and
                                                                                              (i32.add
                                                                                               (tee_local $2
                                                                                                (i32.load8_u
                                                                                                 (get_local $1)
                                                                                                )
                                                                                               )
                                                                                               (i32.const -48)
                                                                                              )
                                                                                              (i32.const 255)
                                                                                             )
                                                                                             (i32.const 9)
                                                                                            )
                                                                                           )
                                                                                           (set_local $3
                                                                                            (i64.add
                                                                                             (i64.add
                                                                                              (i64.mul
                                                                                               (get_local $3)
                                                                                               (i64.const 10)
                                                                                              )
                                                                                              (i64.shr_s
                                                                                               (i64.shl
                                                                                                (i64.extend_u/i32
                                                                                                 (get_local $2)
                                                                                                )
                                                                                                (i64.const 56)
                                                                                               )
                                                                                               (i64.const 56)
                                                                                              )
                                                                                             )
                                                                                             (i64.const -48)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                          (set_local $1
                                                                                           (i32.add
                                                                                            (get_local $1)
                                                                                            (i32.const 1)
                                                                                           )
                                                                                          )
                                                                                          (br_if $label$146
                                                                                           (tee_local $4
                                                                                            (i32.add
                                                                                             (get_local $4)
                                                                                             (i32.const -1)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                          (br $label$143)
                                                                                         )
                                                                                        )
                                                                                        (br_if $label$144
                                                                                         (i32.eqz
                                                                                          (tee_local $4
                                                                                           (i32.load offset=244
                                                                                            (get_local $5)
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                        )
                                                                                        (set_local $1
                                                                                         (i32.load
                                                                                          (i32.add
                                                                                           (get_local $5)
                                                                                           (i32.const 248)
                                                                                          )
                                                                                         )
                                                                                        )
                                                                                        (set_local $3
                                                                                         (i64.const 0)
                                                                                        )
                                                                                        (loop $label$148
                                                                                         (block $label$149
                                                                                          (br_if $label$149
                                                                                           (i32.gt_u
                                                                                            (i32.and
                                                                                             (i32.add
                                                                                              (tee_local $2
                                                                                               (i32.load8_u
                                                                                                (get_local $1)
                                                                                               )
                                                                                              )
                                                                                              (i32.const -48)
                                                                                             )
                                                                                             (i32.const 255)
                                                                                            )
                                                                                            (i32.const 9)
                                                                                           )
                                                                                          )
                                                                                          (set_local $3
                                                                                           (i64.add
                                                                                            (i64.add
                                                                                             (i64.mul
                                                                                              (get_local $3)
                                                                                              (i64.const 10)
                                                                                             )
                                                                                             (i64.shr_s
                                                                                              (i64.shl
                                                                                               (i64.extend_u/i32
                                                                                                (get_local $2)
                                                                                               )
                                                                                               (i64.const 56)
                                                                                              )
                                                                                              (i64.const 56)
                                                                                             )
                                                                                            )
                                                                                            (i64.const -48)
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                         (set_local $1
                                                                                          (i32.add
                                                                                           (get_local $1)
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (br_if $label$148
                                                                                          (tee_local $4
                                                                                           (i32.add
                                                                                            (get_local $4)
                                                                                            (i32.const -1)
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                         (br $label$143)
                                                                                        )
                                                                                       )
                                                                                       (set_local $3
                                                                                        (i64.const 0)
                                                                                       )
                                                                                      )
                                                                                      (i64.store offset=8
                                                                                       (get_local $0)
                                                                                       (i64.const 1397703940)
                                                                                      )
                                                                                      (i64.store
                                                                                       (get_local $0)
                                                                                       (get_local $3)
                                                                                      )
                                                                                      (call $eosio_assert
                                                                                       (i64.lt_u
                                                                                        (i64.add
                                                                                         (get_local $3)
                                                                                         (i64.const 4611686018427387903)
                                                                                        )
                                                                                        (i64.const 9223372036854775807)
                                                                                       )
                                                                                       (i32.const 368)
                                                                                      )
                                                                                      (set_local $3
                                                                                       (i64.shr_u
                                                                                        (i64.load offset=8
                                                                                         (get_local $0)
                                                                                        )
                                                                                        (i64.const 8)
                                                                                       )
                                                                                      )
                                                                                      (set_local $1
                                                                                       (i32.const 0)
                                                                                      )
                                                                                      (block $label$150
                                                                                       (block $label$151
                                                                                        (loop $label$152
                                                                                         (br_if $label$151
                                                                                          (i32.gt_u
                                                                                           (i32.add
                                                                                            (i32.shl
                                                                                             (i32.wrap/i64
                                                                                              (get_local $3)
                                                                                             )
                                                                                             (i32.const 24)
                                                                                            )
                                                                                            (i32.const -1073741825)
                                                                                           )
                                                                                           (i32.const 452984830)
                                                                                          )
                                                                                         )
                                                                                         (block $label$153
                                                                                          (br_if $label$153
                                                                                           (i64.ne
                                                                                            (i64.and
                                                                                             (tee_local $3
                                                                                              (i64.shr_u
                                                                                               (get_local $3)
                                                                                               (i64.const 8)
                                                                                              )
                                                                                             )
                                                                                             (i64.const 255)
                                                                                            )
                                                                                            (i64.const 0)
                                                                                           )
                                                                                          )
                                                                                          (loop $label$154
                                                                                           (br_if $label$151
                                                                                            (i64.ne
                                                                                             (i64.and
                                                                                              (tee_local $3
                                                                                               (i64.shr_u
                                                                                                (get_local $3)
                                                                                                (i64.const 8)
                                                                                               )
                                                                                              )
                                                                                              (i64.const 255)
                                                                                             )
                                                                                             (i64.const 0)
                                                                                            )
                                                                                           )
                                                                                           (br_if $label$154
                                                                                            (i32.lt_s
                                                                                             (tee_local $1
                                                                                              (i32.add
                                                                                               (get_local $1)
                                                                                               (i32.const 1)
                                                                                              )
                                                                                             )
                                                                                             (i32.const 7)
                                                                                            )
                                                                                           )
                                                                                          )
                                                                                         )
                                                                                         (set_local $4
                                                                                          (i32.const 1)
                                                                                         )
                                                                                         (br_if $label$152
                                                                                          (i32.lt_s
                                                                                           (tee_local $1
                                                                                            (i32.add
                                                                                             (get_local $1)
                                                                                             (i32.const 1)
                                                                                            )
                                                                                           )
                                                                                           (i32.const 7)
                                                                                          )
                                                                                         )
                                                                                         (br $label$150)
                                                                                        )
                                                                                       )
                                                                                       (set_local $4
                                                                                        (i32.const 0)
                                                                                       )
                                                                                      )
                                                                                      (call $eosio_assert
                                                                                       (get_local $4)
                                                                                       (i32.const 48)
                                                                                      )
                                                                                      (br_if $label$0
                                                                                       (i32.eqz
                                                                                        (i32.and
                                                                                         (i32.load8_u offset=240
                                                                                          (get_local $5)
                                                                                         )
                                                                                         (i32.const 1)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                      (call $_ZdlPv
                                                                                       (i32.load
                                                                                        (i32.add
                                                                                         (get_local $5)
                                                                                         (i32.const 248)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                      (br $label$0)
                                                                                     )
                                                                                     (br_if $label$79
                                                                                      (i64.lt_u
                                                                                       (get_local $3)
                                                                                       (i64.const 257760)
                                                                                      )
                                                                                     )
                                                                                     (i32.store
                                                                                      (i32.add
                                                                                       (get_local $5)
                                                                                       (i32.const 200)
                                                                                      )
                                                                                      (i32.const 0)
                                                                                     )
                                                                                     (i64.store offset=192
                                                                                      (get_local $5)
                                                                                      (i64.const 0)
                                                                                     )
                                                                                     (br_if $label$13
                                                                                      (i32.ge_u
                                                                                       (tee_local $1
                                                                                        (call $strlen
                                                                                         (i32.const 176)
                                                                                        )
                                                                                       )
                                                                                       (i32.const -16)
                                                                                      )
                                                                                     )
                                                                                     (br_if $label$74
                                                                                      (i32.ge_u
                                                                                       (get_local $1)
                                                                                       (i32.const 11)
                                                                                      )
                                                                                     )
                                                                                     (i32.store8 offset=192
                                                                                      (get_local $5)
                                                                                      (i32.shl
                                                                                       (get_local $1)
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (set_local $4
                                                                                      (i32.or
                                                                                       (i32.add
                                                                                        (get_local $5)
                                                                                        (i32.const 192)
                                                                                       )
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (set_local $2
                                                                                      (i32.add
                                                                                       (get_local $5)
                                                                                       (i32.const 192)
                                                                                      )
                                                                                     )
                                                                                     (br_if $label$73
                                                                                      (get_local $1)
                                                                                     )
                                                                                     (br $label$72)
                                                                                    )
                                                                                    (set_local $4
                                                                                     (call $_Znwj
                                                                                      (tee_local $2
                                                                                       (i32.and
                                                                                        (i32.add
                                                                                         (get_local $1)
                                                                                         (i32.const 16)
                                                                                        )
                                                                                        (i32.const -16)
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                    )
                                                                                    (i32.store offset=224
                                                                                     (get_local $5)
                                                                                     (i32.or
                                                                                      (get_local $2)
                                                                                      (i32.const 1)
                                                                                     )
                                                                                    )
                                                                                    (i32.store offset=232
                                                                                     (get_local $5)
                                                                                     (get_local $4)
                                                                                    )
                                                                                    (i32.store offset=228
                                                                                     (get_local $5)
                                                                                     (get_local $1)
                                                                                    )
                                                                                    (set_local $2
                                                                                     (i32.add
                                                                                      (get_local $5)
                                                                                      (i32.const 224)
                                                                                     )
                                                                                    )
                                                                                   )
                                                                                   (drop
                                                                                    (call $memcpy
                                                                                     (get_local $4)
                                                                                     (i32.const 144)
                                                                                     (get_local $1)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (i32.store8
                                                                                   (i32.add
                                                                                    (get_local $4)
                                                                                    (get_local $1)
                                                                                   )
                                                                                   (i32.const 0)
                                                                                  )
                                                                                  (block $label$155
                                                                                   (block $label$156
                                                                                    (block $label$157
                                                                                     (br_if $label$157
                                                                                      (i32.and
                                                                                       (tee_local $1
                                                                                        (i32.load8_u offset=224
                                                                                         (get_local $5)
                                                                                        )
                                                                                       )
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (br_if $label$156
                                                                                      (i32.eqz
                                                                                       (tee_local $4
                                                                                        (i32.shr_u
                                                                                         (get_local $1)
                                                                                         (i32.const 1)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                     (set_local $1
                                                                                      (i32.add
                                                                                       (get_local $2)
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (set_local $3
                                                                                      (i64.const 0)
                                                                                     )
                                                                                     (loop $label$158
                                                                                      (block $label$159
                                                                                       (br_if $label$159
                                                                                        (i32.gt_u
                                                                                         (i32.and
                                                                                          (i32.add
                                                                                           (tee_local $2
                                                                                            (i32.load8_u
                                                                                             (get_local $1)
                                                                                            )
                                                                                           )
                                                                                           (i32.const -48)
                                                                                          )
                                                                                          (i32.const 255)
                                                                                         )
                                                                                         (i32.const 9)
                                                                                        )
                                                                                       )
                                                                                       (set_local $3
                                                                                        (i64.add
                                                                                         (i64.add
                                                                                          (i64.mul
                                                                                           (get_local $3)
                                                                                           (i64.const 10)
                                                                                          )
                                                                                          (i64.shr_s
                                                                                           (i64.shl
                                                                                            (i64.extend_u/i32
                                                                                             (get_local $2)
                                                                                            )
                                                                                            (i64.const 56)
                                                                                           )
                                                                                           (i64.const 56)
                                                                                          )
                                                                                         )
                                                                                         (i64.const -48)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                      (set_local $1
                                                                                       (i32.add
                                                                                        (get_local $1)
                                                                                        (i32.const 1)
                                                                                       )
                                                                                      )
                                                                                      (br_if $label$158
                                                                                       (tee_local $4
                                                                                        (i32.add
                                                                                         (get_local $4)
                                                                                         (i32.const -1)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                      (br $label$155)
                                                                                     )
                                                                                    )
                                                                                    (br_if $label$156
                                                                                     (i32.eqz
                                                                                      (tee_local $4
                                                                                       (i32.load offset=228
                                                                                        (get_local $5)
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                    )
                                                                                    (set_local $1
                                                                                     (i32.load
                                                                                      (i32.add
                                                                                       (get_local $5)
                                                                                       (i32.const 232)
                                                                                      )
                                                                                     )
                                                                                    )
                                                                                    (set_local $3
                                                                                     (i64.const 0)
                                                                                    )
                                                                                    (loop $label$160
                                                                                     (block $label$161
                                                                                      (br_if $label$161
                                                                                       (i32.gt_u
                                                                                        (i32.and
                                                                                         (i32.add
                                                                                          (tee_local $2
                                                                                           (i32.load8_u
                                                                                            (get_local $1)
                                                                                           )
                                                                                          )
                                                                                          (i32.const -48)
                                                                                         )
                                                                                         (i32.const 255)
                                                                                        )
                                                                                        (i32.const 9)
                                                                                       )
                                                                                      )
                                                                                      (set_local $3
                                                                                       (i64.add
                                                                                        (i64.add
                                                                                         (i64.mul
                                                                                          (get_local $3)
                                                                                          (i64.const 10)
                                                                                         )
                                                                                         (i64.shr_s
                                                                                          (i64.shl
                                                                                           (i64.extend_u/i32
                                                                                            (get_local $2)
                                                                                           )
                                                                                           (i64.const 56)
                                                                                          )
                                                                                          (i64.const 56)
                                                                                         )
                                                                                        )
                                                                                        (i64.const -48)
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                     (set_local $1
                                                                                      (i32.add
                                                                                       (get_local $1)
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (br_if $label$160
                                                                                      (tee_local $4
                                                                                       (i32.add
                                                                                        (get_local $4)
                                                                                        (i32.const -1)
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                     (br $label$155)
                                                                                    )
                                                                                   )
                                                                                   (set_local $3
                                                                                    (i64.const 0)
                                                                                   )
                                                                                  )
                                                                                  (i64.store offset=8
                                                                                   (get_local $0)
                                                                                   (i64.const 1397703940)
                                                                                  )
                                                                                  (i64.store
                                                                                   (get_local $0)
                                                                                   (get_local $3)
                                                                                  )
                                                                                  (call $eosio_assert
                                                                                   (i64.lt_u
                                                                                    (i64.add
                                                                                     (get_local $3)
                                                                                     (i64.const 4611686018427387903)
                                                                                    )
                                                                                    (i64.const 9223372036854775807)
                                                                                   )
                                                                                   (i32.const 368)
                                                                                  )
                                                                                  (set_local $3
                                                                                   (i64.shr_u
                                                                                    (i64.load offset=8
                                                                                     (get_local $0)
                                                                                    )
                                                                                    (i64.const 8)
                                                                                   )
                                                                                  )
                                                                                  (set_local $1
                                                                                   (i32.const 0)
                                                                                  )
                                                                                  (block $label$162
                                                                                   (block $label$163
                                                                                    (loop $label$164
                                                                                     (br_if $label$163
                                                                                      (i32.gt_u
                                                                                       (i32.add
                                                                                        (i32.shl
                                                                                         (i32.wrap/i64
                                                                                          (get_local $3)
                                                                                         )
                                                                                         (i32.const 24)
                                                                                        )
                                                                                        (i32.const -1073741825)
                                                                                       )
                                                                                       (i32.const 452984830)
                                                                                      )
                                                                                     )
                                                                                     (block $label$165
                                                                                      (br_if $label$165
                                                                                       (i64.ne
                                                                                        (i64.and
                                                                                         (tee_local $3
                                                                                          (i64.shr_u
                                                                                           (get_local $3)
                                                                                           (i64.const 8)
                                                                                          )
                                                                                         )
                                                                                         (i64.const 255)
                                                                                        )
                                                                                        (i64.const 0)
                                                                                       )
                                                                                      )
                                                                                      (loop $label$166
                                                                                       (br_if $label$163
                                                                                        (i64.ne
                                                                                         (i64.and
                                                                                          (tee_local $3
                                                                                           (i64.shr_u
                                                                                            (get_local $3)
                                                                                            (i64.const 8)
                                                                                           )
                                                                                          )
                                                                                          (i64.const 255)
                                                                                         )
                                                                                         (i64.const 0)
                                                                                        )
                                                                                       )
                                                                                       (br_if $label$166
                                                                                        (i32.lt_s
                                                                                         (tee_local $1
                                                                                          (i32.add
                                                                                           (get_local $1)
                                                                                           (i32.const 1)
                                                                                          )
                                                                                         )
                                                                                         (i32.const 7)
                                                                                        )
                                                                                       )
                                                                                      )
                                                                                     )
                                                                                     (set_local $4
                                                                                      (i32.const 1)
                                                                                     )
                                                                                     (br_if $label$164
                                                                                      (i32.lt_s
                                                                                       (tee_local $1
                                                                                        (i32.add
                                                                                         (get_local $1)
                                                                                         (i32.const 1)
                                                                                        )
                                                                                       )
                                                                                       (i32.const 7)
                                                                                      )
                                                                                     )
                                                                                     (br $label$162)
                                                                                    )
                                                                                   )
                                                                                   (set_local $4
                                                                                    (i32.const 0)
                                                                                   )
                                                                                  )
                                                                                  (call $eosio_assert
                                                                                   (get_local $4)
                                                                                   (i32.const 48)
                                                                                  )
                                                                                  (br_if $label$0
                                                                                   (i32.eqz
                                                                                    (i32.and
                                                                                     (i32.load8_u offset=224
                                                                                      (get_local $5)
                                                                                     )
                                                                                     (i32.const 1)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (call $_ZdlPv
                                                                                   (i32.load
                                                                                    (i32.add
                                                                                     (get_local $5)
                                                                                     (i32.const 232)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (br $label$0)
                                                                                 )
                                                                                 (br_if $label$75
                                                                                  (i64.lt_u
                                                                                   (get_local $3)
                                                                                   (i64.const 236280)
                                                                                  )
                                                                                 )
                                                                                 (i32.store
                                                                                  (i32.add
                                                                                   (get_local $5)
                                                                                   (i32.const 184)
                                                                                  )
                                                                                  (i32.const 0)
                                                                                 )
                                                                                 (i64.store offset=176
                                                                                  (get_local $5)
                                                                                  (i64.const 0)
                                                                                 )
                                                                                 (br_if $label$12
                                                                                  (i32.ge_u
                                                                                   (tee_local $1
                                                                                    (call $strlen
                                                                                     (i32.const 192)
                                                                                    )
                                                                                   )
                                                                                   (i32.const -16)
                                                                                  )
                                                                                 )
                                                                                 (br_if $label$70
                                                                                  (i32.ge_u
                                                                                   (get_local $1)
                                                                                   (i32.const 11)
                                                                                  )
                                                                                 )
                                                                                 (i32.store8 offset=176
                                                                                  (get_local $5)
                                                                                  (i32.shl
                                                                                   (get_local $1)
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (set_local $4
                                                                                  (i32.or
                                                                                   (i32.add
                                                                                    (get_local $5)
                                                                                    (i32.const 176)
                                                                                   )
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (set_local $2
                                                                                  (i32.add
                                                                                   (get_local $5)
                                                                                   (i32.const 176)
                                                                                  )
                                                                                 )
                                                                                 (br_if $label$69
                                                                                  (get_local $1)
                                                                                 )
                                                                                 (br $label$68)
                                                                                )
                                                                                (set_local $4
                                                                                 (call $_Znwj
                                                                                  (tee_local $2
                                                                                   (i32.and
                                                                                    (i32.add
                                                                                     (get_local $1)
                                                                                     (i32.const 16)
                                                                                    )
                                                                                    (i32.const -16)
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                )
                                                                                (i32.store offset=208
                                                                                 (get_local $5)
                                                                                 (i32.or
                                                                                  (get_local $2)
                                                                                  (i32.const 1)
                                                                                 )
                                                                                )
                                                                                (i32.store offset=216
                                                                                 (get_local $5)
                                                                                 (get_local $4)
                                                                                )
                                                                                (i32.store offset=212
                                                                                 (get_local $5)
                                                                                 (get_local $1)
                                                                                )
                                                                                (set_local $2
                                                                                 (i32.add
                                                                                  (get_local $5)
                                                                                  (i32.const 208)
                                                                                 )
                                                                                )
                                                                               )
                                                                               (drop
                                                                                (call $memcpy
                                                                                 (get_local $4)
                                                                                 (i32.const 160)
                                                                                 (get_local $1)
                                                                                )
                                                                               )
                                                                              )
                                                                              (i32.store8
                                                                               (i32.add
                                                                                (get_local $4)
                                                                                (get_local $1)
                                                                               )
                                                                               (i32.const 0)
                                                                              )
                                                                              (block $label$167
                                                                               (block $label$168
                                                                                (block $label$169
                                                                                 (br_if $label$169
                                                                                  (i32.and
                                                                                   (tee_local $1
                                                                                    (i32.load8_u offset=208
                                                                                     (get_local $5)
                                                                                    )
                                                                                   )
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (br_if $label$168
                                                                                  (i32.eqz
                                                                                   (tee_local $4
                                                                                    (i32.shr_u
                                                                                     (get_local $1)
                                                                                     (i32.const 1)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                 (set_local $1
                                                                                  (i32.add
                                                                                   (get_local $2)
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (set_local $3
                                                                                  (i64.const 0)
                                                                                 )
                                                                                 (loop $label$170
                                                                                  (block $label$171
                                                                                   (br_if $label$171
                                                                                    (i32.gt_u
                                                                                     (i32.and
                                                                                      (i32.add
                                                                                       (tee_local $2
                                                                                        (i32.load8_u
                                                                                         (get_local $1)
                                                                                        )
                                                                                       )
                                                                                       (i32.const -48)
                                                                                      )
                                                                                      (i32.const 255)
                                                                                     )
                                                                                     (i32.const 9)
                                                                                    )
                                                                                   )
                                                                                   (set_local $3
                                                                                    (i64.add
                                                                                     (i64.add
                                                                                      (i64.mul
                                                                                       (get_local $3)
                                                                                       (i64.const 10)
                                                                                      )
                                                                                      (i64.shr_s
                                                                                       (i64.shl
                                                                                        (i64.extend_u/i32
                                                                                         (get_local $2)
                                                                                        )
                                                                                        (i64.const 56)
                                                                                       )
                                                                                       (i64.const 56)
                                                                                      )
                                                                                     )
                                                                                     (i64.const -48)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (set_local $1
                                                                                   (i32.add
                                                                                    (get_local $1)
                                                                                    (i32.const 1)
                                                                                   )
                                                                                  )
                                                                                  (br_if $label$170
                                                                                   (tee_local $4
                                                                                    (i32.add
                                                                                     (get_local $4)
                                                                                     (i32.const -1)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (br $label$167)
                                                                                 )
                                                                                )
                                                                                (br_if $label$168
                                                                                 (i32.eqz
                                                                                  (tee_local $4
                                                                                   (i32.load offset=212
                                                                                    (get_local $5)
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                )
                                                                                (set_local $1
                                                                                 (i32.load
                                                                                  (i32.add
                                                                                   (get_local $5)
                                                                                   (i32.const 216)
                                                                                  )
                                                                                 )
                                                                                )
                                                                                (set_local $3
                                                                                 (i64.const 0)
                                                                                )
                                                                                (loop $label$172
                                                                                 (block $label$173
                                                                                  (br_if $label$173
                                                                                   (i32.gt_u
                                                                                    (i32.and
                                                                                     (i32.add
                                                                                      (tee_local $2
                                                                                       (i32.load8_u
                                                                                        (get_local $1)
                                                                                       )
                                                                                      )
                                                                                      (i32.const -48)
                                                                                     )
                                                                                     (i32.const 255)
                                                                                    )
                                                                                    (i32.const 9)
                                                                                   )
                                                                                  )
                                                                                  (set_local $3
                                                                                   (i64.add
                                                                                    (i64.add
                                                                                     (i64.mul
                                                                                      (get_local $3)
                                                                                      (i64.const 10)
                                                                                     )
                                                                                     (i64.shr_s
                                                                                      (i64.shl
                                                                                       (i64.extend_u/i32
                                                                                        (get_local $2)
                                                                                       )
                                                                                       (i64.const 56)
                                                                                      )
                                                                                      (i64.const 56)
                                                                                     )
                                                                                    )
                                                                                    (i64.const -48)
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                 (set_local $1
                                                                                  (i32.add
                                                                                   (get_local $1)
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (br_if $label$172
                                                                                  (tee_local $4
                                                                                   (i32.add
                                                                                    (get_local $4)
                                                                                    (i32.const -1)
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                 (br $label$167)
                                                                                )
                                                                               )
                                                                               (set_local $3
                                                                                (i64.const 0)
                                                                               )
                                                                              )
                                                                              (i64.store offset=8
                                                                               (get_local $0)
                                                                               (i64.const 1397703940)
                                                                              )
                                                                              (i64.store
                                                                               (get_local $0)
                                                                               (get_local $3)
                                                                              )
                                                                              (call $eosio_assert
                                                                               (i64.lt_u
                                                                                (i64.add
                                                                                 (get_local $3)
                                                                                 (i64.const 4611686018427387903)
                                                                                )
                                                                                (i64.const 9223372036854775807)
                                                                               )
                                                                               (i32.const 368)
                                                                              )
                                                                              (set_local $3
                                                                               (i64.shr_u
                                                                                (i64.load offset=8
                                                                                 (get_local $0)
                                                                                )
                                                                                (i64.const 8)
                                                                               )
                                                                              )
                                                                              (set_local $1
                                                                               (i32.const 0)
                                                                              )
                                                                              (block $label$174
                                                                               (block $label$175
                                                                                (loop $label$176
                                                                                 (br_if $label$175
                                                                                  (i32.gt_u
                                                                                   (i32.add
                                                                                    (i32.shl
                                                                                     (i32.wrap/i64
                                                                                      (get_local $3)
                                                                                     )
                                                                                     (i32.const 24)
                                                                                    )
                                                                                    (i32.const -1073741825)
                                                                                   )
                                                                                   (i32.const 452984830)
                                                                                  )
                                                                                 )
                                                                                 (block $label$177
                                                                                  (br_if $label$177
                                                                                   (i64.ne
                                                                                    (i64.and
                                                                                     (tee_local $3
                                                                                      (i64.shr_u
                                                                                       (get_local $3)
                                                                                       (i64.const 8)
                                                                                      )
                                                                                     )
                                                                                     (i64.const 255)
                                                                                    )
                                                                                    (i64.const 0)
                                                                                   )
                                                                                  )
                                                                                  (loop $label$178
                                                                                   (br_if $label$175
                                                                                    (i64.ne
                                                                                     (i64.and
                                                                                      (tee_local $3
                                                                                       (i64.shr_u
                                                                                        (get_local $3)
                                                                                        (i64.const 8)
                                                                                       )
                                                                                      )
                                                                                      (i64.const 255)
                                                                                     )
                                                                                     (i64.const 0)
                                                                                    )
                                                                                   )
                                                                                   (br_if $label$178
                                                                                    (i32.lt_s
                                                                                     (tee_local $1
                                                                                      (i32.add
                                                                                       (get_local $1)
                                                                                       (i32.const 1)
                                                                                      )
                                                                                     )
                                                                                     (i32.const 7)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                 )
                                                                                 (set_local $4
                                                                                  (i32.const 1)
                                                                                 )
                                                                                 (br_if $label$176
                                                                                  (i32.lt_s
                                                                                   (tee_local $1
                                                                                    (i32.add
                                                                                     (get_local $1)
                                                                                     (i32.const 1)
                                                                                    )
                                                                                   )
                                                                                   (i32.const 7)
                                                                                  )
                                                                                 )
                                                                                 (br $label$174)
                                                                                )
                                                                               )
                                                                               (set_local $4
                                                                                (i32.const 0)
                                                                               )
                                                                              )
                                                                              (call $eosio_assert
                                                                               (get_local $4)
                                                                               (i32.const 48)
                                                                              )
                                                                              (br_if $label$0
                                                                               (i32.eqz
                                                                                (i32.and
                                                                                 (i32.load8_u offset=208
                                                                                  (get_local $5)
                                                                                 )
                                                                                 (i32.const 1)
                                                                                )
                                                                               )
                                                                              )
                                                                              (call $_ZdlPv
                                                                               (i32.load
                                                                                (i32.add
                                                                                 (get_local $5)
                                                                                 (i32.const 216)
                                                                                )
                                                                               )
                                                                              )
                                                                              (br $label$0)
                                                                             )
                                                                             (br_if $label$71
                                                                              (i64.lt_u
                                                                               (get_local $3)
                                                                               (i64.const 214800)
                                                                              )
                                                                             )
                                                                             (i32.store
                                                                              (i32.add
                                                                               (get_local $5)
                                                                               (i32.const 168)
                                                                              )
                                                                              (i32.const 0)
                                                                             )
                                                                             (i64.store offset=160
                                                                              (get_local $5)
                                                                              (i64.const 0)
                                                                             )
                                                                             (br_if $label$11
                                                                              (i32.ge_u
                                                                               (tee_local $1
                                                                                (call $strlen
                                                                                 (i32.const 208)
                                                                                )
                                                                               )
                                                                               (i32.const -16)
                                                                              )
                                                                             )
                                                                             (br_if $label$66
                                                                              (i32.ge_u
                                                                               (get_local $1)
                                                                               (i32.const 11)
                                                                              )
                                                                             )
                                                                             (i32.store8 offset=160
                                                                              (get_local $5)
                                                                              (i32.shl
                                                                               (get_local $1)
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (set_local $4
                                                                              (i32.or
                                                                               (i32.add
                                                                                (get_local $5)
                                                                                (i32.const 160)
                                                                               )
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (set_local $2
                                                                              (i32.add
                                                                               (get_local $5)
                                                                               (i32.const 160)
                                                                              )
                                                                             )
                                                                             (br_if $label$65
                                                                              (get_local $1)
                                                                             )
                                                                             (br $label$64)
                                                                            )
                                                                            (set_local $4
                                                                             (call $_Znwj
                                                                              (tee_local $2
                                                                               (i32.and
                                                                                (i32.add
                                                                                 (get_local $1)
                                                                                 (i32.const 16)
                                                                                )
                                                                                (i32.const -16)
                                                                               )
                                                                              )
                                                                             )
                                                                            )
                                                                            (i32.store offset=192
                                                                             (get_local $5)
                                                                             (i32.or
                                                                              (get_local $2)
                                                                              (i32.const 1)
                                                                             )
                                                                            )
                                                                            (i32.store offset=200
                                                                             (get_local $5)
                                                                             (get_local $4)
                                                                            )
                                                                            (i32.store offset=196
                                                                             (get_local $5)
                                                                             (get_local $1)
                                                                            )
                                                                            (set_local $2
                                                                             (i32.add
                                                                              (get_local $5)
                                                                              (i32.const 192)
                                                                             )
                                                                            )
                                                                           )
                                                                           (drop
                                                                            (call $memcpy
                                                                             (get_local $4)
                                                                             (i32.const 176)
                                                                             (get_local $1)
                                                                            )
                                                                           )
                                                                          )
                                                                          (i32.store8
                                                                           (i32.add
                                                                            (get_local $4)
                                                                            (get_local $1)
                                                                           )
                                                                           (i32.const 0)
                                                                          )
                                                                          (block $label$179
                                                                           (block $label$180
                                                                            (block $label$181
                                                                             (br_if $label$181
                                                                              (i32.and
                                                                               (tee_local $1
                                                                                (i32.load8_u offset=192
                                                                                 (get_local $5)
                                                                                )
                                                                               )
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (br_if $label$180
                                                                              (i32.eqz
                                                                               (tee_local $4
                                                                                (i32.shr_u
                                                                                 (get_local $1)
                                                                                 (i32.const 1)
                                                                                )
                                                                               )
                                                                              )
                                                                             )
                                                                             (set_local $1
                                                                              (i32.add
                                                                               (get_local $2)
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (set_local $3
                                                                              (i64.const 0)
                                                                             )
                                                                             (loop $label$182
                                                                              (block $label$183
                                                                               (br_if $label$183
                                                                                (i32.gt_u
                                                                                 (i32.and
                                                                                  (i32.add
                                                                                   (tee_local $2
                                                                                    (i32.load8_u
                                                                                     (get_local $1)
                                                                                    )
                                                                                   )
                                                                                   (i32.const -48)
                                                                                  )
                                                                                  (i32.const 255)
                                                                                 )
                                                                                 (i32.const 9)
                                                                                )
                                                                               )
                                                                               (set_local $3
                                                                                (i64.add
                                                                                 (i64.add
                                                                                  (i64.mul
                                                                                   (get_local $3)
                                                                                   (i64.const 10)
                                                                                  )
                                                                                  (i64.shr_s
                                                                                   (i64.shl
                                                                                    (i64.extend_u/i32
                                                                                     (get_local $2)
                                                                                    )
                                                                                    (i64.const 56)
                                                                                   )
                                                                                   (i64.const 56)
                                                                                  )
                                                                                 )
                                                                                 (i64.const -48)
                                                                                )
                                                                               )
                                                                              )
                                                                              (set_local $1
                                                                               (i32.add
                                                                                (get_local $1)
                                                                                (i32.const 1)
                                                                               )
                                                                              )
                                                                              (br_if $label$182
                                                                               (tee_local $4
                                                                                (i32.add
                                                                                 (get_local $4)
                                                                                 (i32.const -1)
                                                                                )
                                                                               )
                                                                              )
                                                                              (br $label$179)
                                                                             )
                                                                            )
                                                                            (br_if $label$180
                                                                             (i32.eqz
                                                                              (tee_local $4
                                                                               (i32.load offset=196
                                                                                (get_local $5)
                                                                               )
                                                                              )
                                                                             )
                                                                            )
                                                                            (set_local $1
                                                                             (i32.load
                                                                              (i32.add
                                                                               (get_local $5)
                                                                               (i32.const 200)
                                                                              )
                                                                             )
                                                                            )
                                                                            (set_local $3
                                                                             (i64.const 0)
                                                                            )
                                                                            (loop $label$184
                                                                             (block $label$185
                                                                              (br_if $label$185
                                                                               (i32.gt_u
                                                                                (i32.and
                                                                                 (i32.add
                                                                                  (tee_local $2
                                                                                   (i32.load8_u
                                                                                    (get_local $1)
                                                                                   )
                                                                                  )
                                                                                  (i32.const -48)
                                                                                 )
                                                                                 (i32.const 255)
                                                                                )
                                                                                (i32.const 9)
                                                                               )
                                                                              )
                                                                              (set_local $3
                                                                               (i64.add
                                                                                (i64.add
                                                                                 (i64.mul
                                                                                  (get_local $3)
                                                                                  (i64.const 10)
                                                                                 )
                                                                                 (i64.shr_s
                                                                                  (i64.shl
                                                                                   (i64.extend_u/i32
                                                                                    (get_local $2)
                                                                                   )
                                                                                   (i64.const 56)
                                                                                  )
                                                                                  (i64.const 56)
                                                                                 )
                                                                                )
                                                                                (i64.const -48)
                                                                               )
                                                                              )
                                                                             )
                                                                             (set_local $1
                                                                              (i32.add
                                                                               (get_local $1)
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (br_if $label$184
                                                                              (tee_local $4
                                                                               (i32.add
                                                                                (get_local $4)
                                                                                (i32.const -1)
                                                                               )
                                                                              )
                                                                             )
                                                                             (br $label$179)
                                                                            )
                                                                           )
                                                                           (set_local $3
                                                                            (i64.const 0)
                                                                           )
                                                                          )
                                                                          (i64.store offset=8
                                                                           (get_local $0)
                                                                           (i64.const 1397703940)
                                                                          )
                                                                          (i64.store
                                                                           (get_local $0)
                                                                           (get_local $3)
                                                                          )
                                                                          (call $eosio_assert
                                                                           (i64.lt_u
                                                                            (i64.add
                                                                             (get_local $3)
                                                                             (i64.const 4611686018427387903)
                                                                            )
                                                                            (i64.const 9223372036854775807)
                                                                           )
                                                                           (i32.const 368)
                                                                          )
                                                                          (set_local $3
                                                                           (i64.shr_u
                                                                            (i64.load offset=8
                                                                             (get_local $0)
                                                                            )
                                                                            (i64.const 8)
                                                                           )
                                                                          )
                                                                          (set_local $1
                                                                           (i32.const 0)
                                                                          )
                                                                          (block $label$186
                                                                           (block $label$187
                                                                            (loop $label$188
                                                                             (br_if $label$187
                                                                              (i32.gt_u
                                                                               (i32.add
                                                                                (i32.shl
                                                                                 (i32.wrap/i64
                                                                                  (get_local $3)
                                                                                 )
                                                                                 (i32.const 24)
                                                                                )
                                                                                (i32.const -1073741825)
                                                                               )
                                                                               (i32.const 452984830)
                                                                              )
                                                                             )
                                                                             (block $label$189
                                                                              (br_if $label$189
                                                                               (i64.ne
                                                                                (i64.and
                                                                                 (tee_local $3
                                                                                  (i64.shr_u
                                                                                   (get_local $3)
                                                                                   (i64.const 8)
                                                                                  )
                                                                                 )
                                                                                 (i64.const 255)
                                                                                )
                                                                                (i64.const 0)
                                                                               )
                                                                              )
                                                                              (loop $label$190
                                                                               (br_if $label$187
                                                                                (i64.ne
                                                                                 (i64.and
                                                                                  (tee_local $3
                                                                                   (i64.shr_u
                                                                                    (get_local $3)
                                                                                    (i64.const 8)
                                                                                   )
                                                                                  )
                                                                                  (i64.const 255)
                                                                                 )
                                                                                 (i64.const 0)
                                                                                )
                                                                               )
                                                                               (br_if $label$190
                                                                                (i32.lt_s
                                                                                 (tee_local $1
                                                                                  (i32.add
                                                                                   (get_local $1)
                                                                                   (i32.const 1)
                                                                                  )
                                                                                 )
                                                                                 (i32.const 7)
                                                                                )
                                                                               )
                                                                              )
                                                                             )
                                                                             (set_local $4
                                                                              (i32.const 1)
                                                                             )
                                                                             (br_if $label$188
                                                                              (i32.lt_s
                                                                               (tee_local $1
                                                                                (i32.add
                                                                                 (get_local $1)
                                                                                 (i32.const 1)
                                                                                )
                                                                               )
                                                                               (i32.const 7)
                                                                              )
                                                                             )
                                                                             (br $label$186)
                                                                            )
                                                                           )
                                                                           (set_local $4
                                                                            (i32.const 0)
                                                                           )
                                                                          )
                                                                          (call $eosio_assert
                                                                           (get_local $4)
                                                                           (i32.const 48)
                                                                          )
                                                                          (br_if $label$0
                                                                           (i32.eqz
                                                                            (i32.and
                                                                             (i32.load8_u offset=192
                                                                              (get_local $5)
                                                                             )
                                                                             (i32.const 1)
                                                                            )
                                                                           )
                                                                          )
                                                                          (call $_ZdlPv
                                                                           (i32.load
                                                                            (i32.add
                                                                             (get_local $5)
                                                                             (i32.const 200)
                                                                            )
                                                                           )
                                                                          )
                                                                          (br $label$0)
                                                                         )
                                                                         (br_if $label$67
                                                                          (i64.lt_u
                                                                           (get_local $3)
                                                                           (i64.const 193320)
                                                                          )
                                                                         )
                                                                         (i32.store
                                                                          (i32.add
                                                                           (get_local $5)
                                                                           (i32.const 152)
                                                                          )
                                                                          (i32.const 0)
                                                                         )
                                                                         (i64.store offset=144
                                                                          (get_local $5)
                                                                          (i64.const 0)
                                                                         )
                                                                         (br_if $label$10
                                                                          (i32.ge_u
                                                                           (tee_local $1
                                                                            (call $strlen
                                                                             (i32.const 224)
                                                                            )
                                                                           )
                                                                           (i32.const -16)
                                                                          )
                                                                         )
                                                                         (br_if $label$62
                                                                          (i32.ge_u
                                                                           (get_local $1)
                                                                           (i32.const 11)
                                                                          )
                                                                         )
                                                                         (i32.store8 offset=144
                                                                          (get_local $5)
                                                                          (i32.shl
                                                                           (get_local $1)
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (set_local $4
                                                                          (i32.or
                                                                           (i32.add
                                                                            (get_local $5)
                                                                            (i32.const 144)
                                                                           )
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (set_local $2
                                                                          (i32.add
                                                                           (get_local $5)
                                                                           (i32.const 144)
                                                                          )
                                                                         )
                                                                         (br_if $label$61
                                                                          (get_local $1)
                                                                         )
                                                                         (br $label$60)
                                                                        )
                                                                        (set_local $4
                                                                         (call $_Znwj
                                                                          (tee_local $2
                                                                           (i32.and
                                                                            (i32.add
                                                                             (get_local $1)
                                                                             (i32.const 16)
                                                                            )
                                                                            (i32.const -16)
                                                                           )
                                                                          )
                                                                         )
                                                                        )
                                                                        (i32.store offset=176
                                                                         (get_local $5)
                                                                         (i32.or
                                                                          (get_local $2)
                                                                          (i32.const 1)
                                                                         )
                                                                        )
                                                                        (i32.store offset=184
                                                                         (get_local $5)
                                                                         (get_local $4)
                                                                        )
                                                                        (i32.store offset=180
                                                                         (get_local $5)
                                                                         (get_local $1)
                                                                        )
                                                                        (set_local $2
                                                                         (i32.add
                                                                          (get_local $5)
                                                                          (i32.const 176)
                                                                         )
                                                                        )
                                                                       )
                                                                       (drop
                                                                        (call $memcpy
                                                                         (get_local $4)
                                                                         (i32.const 192)
                                                                         (get_local $1)
                                                                        )
                                                                       )
                                                                      )
                                                                      (i32.store8
                                                                       (i32.add
                                                                        (get_local $4)
                                                                        (get_local $1)
                                                                       )
                                                                       (i32.const 0)
                                                                      )
                                                                      (block $label$191
                                                                       (block $label$192
                                                                        (block $label$193
                                                                         (br_if $label$193
                                                                          (i32.and
                                                                           (tee_local $1
                                                                            (i32.load8_u offset=176
                                                                             (get_local $5)
                                                                            )
                                                                           )
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (br_if $label$192
                                                                          (i32.eqz
                                                                           (tee_local $4
                                                                            (i32.shr_u
                                                                             (get_local $1)
                                                                             (i32.const 1)
                                                                            )
                                                                           )
                                                                          )
                                                                         )
                                                                         (set_local $1
                                                                          (i32.add
                                                                           (get_local $2)
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (set_local $3
                                                                          (i64.const 0)
                                                                         )
                                                                         (loop $label$194
                                                                          (block $label$195
                                                                           (br_if $label$195
                                                                            (i32.gt_u
                                                                             (i32.and
                                                                              (i32.add
                                                                               (tee_local $2
                                                                                (i32.load8_u
                                                                                 (get_local $1)
                                                                                )
                                                                               )
                                                                               (i32.const -48)
                                                                              )
                                                                              (i32.const 255)
                                                                             )
                                                                             (i32.const 9)
                                                                            )
                                                                           )
                                                                           (set_local $3
                                                                            (i64.add
                                                                             (i64.add
                                                                              (i64.mul
                                                                               (get_local $3)
                                                                               (i64.const 10)
                                                                              )
                                                                              (i64.shr_s
                                                                               (i64.shl
                                                                                (i64.extend_u/i32
                                                                                 (get_local $2)
                                                                                )
                                                                                (i64.const 56)
                                                                               )
                                                                               (i64.const 56)
                                                                              )
                                                                             )
                                                                             (i64.const -48)
                                                                            )
                                                                           )
                                                                          )
                                                                          (set_local $1
                                                                           (i32.add
                                                                            (get_local $1)
                                                                            (i32.const 1)
                                                                           )
                                                                          )
                                                                          (br_if $label$194
                                                                           (tee_local $4
                                                                            (i32.add
                                                                             (get_local $4)
                                                                             (i32.const -1)
                                                                            )
                                                                           )
                                                                          )
                                                                          (br $label$191)
                                                                         )
                                                                        )
                                                                        (br_if $label$192
                                                                         (i32.eqz
                                                                          (tee_local $4
                                                                           (i32.load offset=180
                                                                            (get_local $5)
                                                                           )
                                                                          )
                                                                         )
                                                                        )
                                                                        (set_local $1
                                                                         (i32.load
                                                                          (i32.add
                                                                           (get_local $5)
                                                                           (i32.const 184)
                                                                          )
                                                                         )
                                                                        )
                                                                        (set_local $3
                                                                         (i64.const 0)
                                                                        )
                                                                        (loop $label$196
                                                                         (block $label$197
                                                                          (br_if $label$197
                                                                           (i32.gt_u
                                                                            (i32.and
                                                                             (i32.add
                                                                              (tee_local $2
                                                                               (i32.load8_u
                                                                                (get_local $1)
                                                                               )
                                                                              )
                                                                              (i32.const -48)
                                                                             )
                                                                             (i32.const 255)
                                                                            )
                                                                            (i32.const 9)
                                                                           )
                                                                          )
                                                                          (set_local $3
                                                                           (i64.add
                                                                            (i64.add
                                                                             (i64.mul
                                                                              (get_local $3)
                                                                              (i64.const 10)
                                                                             )
                                                                             (i64.shr_s
                                                                              (i64.shl
                                                                               (i64.extend_u/i32
                                                                                (get_local $2)
                                                                               )
                                                                               (i64.const 56)
                                                                              )
                                                                              (i64.const 56)
                                                                             )
                                                                            )
                                                                            (i64.const -48)
                                                                           )
                                                                          )
                                                                         )
                                                                         (set_local $1
                                                                          (i32.add
                                                                           (get_local $1)
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (br_if $label$196
                                                                          (tee_local $4
                                                                           (i32.add
                                                                            (get_local $4)
                                                                            (i32.const -1)
                                                                           )
                                                                          )
                                                                         )
                                                                         (br $label$191)
                                                                        )
                                                                       )
                                                                       (set_local $3
                                                                        (i64.const 0)
                                                                       )
                                                                      )
                                                                      (i64.store offset=8
                                                                       (get_local $0)
                                                                       (i64.const 1397703940)
                                                                      )
                                                                      (i64.store
                                                                       (get_local $0)
                                                                       (get_local $3)
                                                                      )
                                                                      (call $eosio_assert
                                                                       (i64.lt_u
                                                                        (i64.add
                                                                         (get_local $3)
                                                                         (i64.const 4611686018427387903)
                                                                        )
                                                                        (i64.const 9223372036854775807)
                                                                       )
                                                                       (i32.const 368)
                                                                      )
                                                                      (set_local $3
                                                                       (i64.shr_u
                                                                        (i64.load offset=8
                                                                         (get_local $0)
                                                                        )
                                                                        (i64.const 8)
                                                                       )
                                                                      )
                                                                      (set_local $1
                                                                       (i32.const 0)
                                                                      )
                                                                      (block $label$198
                                                                       (block $label$199
                                                                        (loop $label$200
                                                                         (br_if $label$199
                                                                          (i32.gt_u
                                                                           (i32.add
                                                                            (i32.shl
                                                                             (i32.wrap/i64
                                                                              (get_local $3)
                                                                             )
                                                                             (i32.const 24)
                                                                            )
                                                                            (i32.const -1073741825)
                                                                           )
                                                                           (i32.const 452984830)
                                                                          )
                                                                         )
                                                                         (block $label$201
                                                                          (br_if $label$201
                                                                           (i64.ne
                                                                            (i64.and
                                                                             (tee_local $3
                                                                              (i64.shr_u
                                                                               (get_local $3)
                                                                               (i64.const 8)
                                                                              )
                                                                             )
                                                                             (i64.const 255)
                                                                            )
                                                                            (i64.const 0)
                                                                           )
                                                                          )
                                                                          (loop $label$202
                                                                           (br_if $label$199
                                                                            (i64.ne
                                                                             (i64.and
                                                                              (tee_local $3
                                                                               (i64.shr_u
                                                                                (get_local $3)
                                                                                (i64.const 8)
                                                                               )
                                                                              )
                                                                              (i64.const 255)
                                                                             )
                                                                             (i64.const 0)
                                                                            )
                                                                           )
                                                                           (br_if $label$202
                                                                            (i32.lt_s
                                                                             (tee_local $1
                                                                              (i32.add
                                                                               (get_local $1)
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (i32.const 7)
                                                                            )
                                                                           )
                                                                          )
                                                                         )
                                                                         (set_local $4
                                                                          (i32.const 1)
                                                                         )
                                                                         (br_if $label$200
                                                                          (i32.lt_s
                                                                           (tee_local $1
                                                                            (i32.add
                                                                             (get_local $1)
                                                                             (i32.const 1)
                                                                            )
                                                                           )
                                                                           (i32.const 7)
                                                                          )
                                                                         )
                                                                         (br $label$198)
                                                                        )
                                                                       )
                                                                       (set_local $4
                                                                        (i32.const 0)
                                                                       )
                                                                      )
                                                                      (call $eosio_assert
                                                                       (get_local $4)
                                                                       (i32.const 48)
                                                                      )
                                                                      (br_if $label$0
                                                                       (i32.eqz
                                                                        (i32.and
                                                                         (i32.load8_u offset=176
                                                                          (get_local $5)
                                                                         )
                                                                         (i32.const 1)
                                                                        )
                                                                       )
                                                                      )
                                                                      (call $_ZdlPv
                                                                       (i32.load
                                                                        (i32.add
                                                                         (get_local $5)
                                                                         (i32.const 184)
                                                                        )
                                                                       )
                                                                      )
                                                                      (br $label$0)
                                                                     )
                                                                     (br_if $label$63
                                                                      (i64.lt_u
                                                                       (get_local $3)
                                                                       (i64.const 171840)
                                                                      )
                                                                     )
                                                                     (i32.store
                                                                      (i32.add
                                                                       (get_local $5)
                                                                       (i32.const 136)
                                                                      )
                                                                      (i32.const 0)
                                                                     )
                                                                     (i64.store offset=128
                                                                      (get_local $5)
                                                                      (i64.const 0)
                                                                     )
                                                                     (br_if $label$9
                                                                      (i32.ge_u
                                                                       (tee_local $1
                                                                        (call $strlen
                                                                         (i32.const 240)
                                                                        )
                                                                       )
                                                                       (i32.const -16)
                                                                      )
                                                                     )
                                                                     (br_if $label$58
                                                                      (i32.ge_u
                                                                       (get_local $1)
                                                                       (i32.const 11)
                                                                      )
                                                                     )
                                                                     (i32.store8 offset=128
                                                                      (get_local $5)
                                                                      (i32.shl
                                                                       (get_local $1)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (set_local $4
                                                                      (i32.or
                                                                       (i32.add
                                                                        (get_local $5)
                                                                        (i32.const 128)
                                                                       )
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (set_local $2
                                                                      (i32.add
                                                                       (get_local $5)
                                                                       (i32.const 128)
                                                                      )
                                                                     )
                                                                     (br_if $label$57
                                                                      (get_local $1)
                                                                     )
                                                                     (br $label$56)
                                                                    )
                                                                    (set_local $4
                                                                     (call $_Znwj
                                                                      (tee_local $2
                                                                       (i32.and
                                                                        (i32.add
                                                                         (get_local $1)
                                                                         (i32.const 16)
                                                                        )
                                                                        (i32.const -16)
                                                                       )
                                                                      )
                                                                     )
                                                                    )
                                                                    (i32.store offset=160
                                                                     (get_local $5)
                                                                     (i32.or
                                                                      (get_local $2)
                                                                      (i32.const 1)
                                                                     )
                                                                    )
                                                                    (i32.store offset=168
                                                                     (get_local $5)
                                                                     (get_local $4)
                                                                    )
                                                                    (i32.store offset=164
                                                                     (get_local $5)
                                                                     (get_local $1)
                                                                    )
                                                                    (set_local $2
                                                                     (i32.add
                                                                      (get_local $5)
                                                                      (i32.const 160)
                                                                     )
                                                                    )
                                                                   )
                                                                   (drop
                                                                    (call $memcpy
                                                                     (get_local $4)
                                                                     (i32.const 208)
                                                                     (get_local $1)
                                                                    )
                                                                   )
                                                                  )
                                                                  (i32.store8
                                                                   (i32.add
                                                                    (get_local $4)
                                                                    (get_local $1)
                                                                   )
                                                                   (i32.const 0)
                                                                  )
                                                                  (block $label$203
                                                                   (block $label$204
                                                                    (block $label$205
                                                                     (br_if $label$205
                                                                      (i32.and
                                                                       (tee_local $1
                                                                        (i32.load8_u offset=160
                                                                         (get_local $5)
                                                                        )
                                                                       )
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (br_if $label$204
                                                                      (i32.eqz
                                                                       (tee_local $4
                                                                        (i32.shr_u
                                                                         (get_local $1)
                                                                         (i32.const 1)
                                                                        )
                                                                       )
                                                                      )
                                                                     )
                                                                     (set_local $1
                                                                      (i32.add
                                                                       (get_local $2)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (set_local $3
                                                                      (i64.const 0)
                                                                     )
                                                                     (loop $label$206
                                                                      (block $label$207
                                                                       (br_if $label$207
                                                                        (i32.gt_u
                                                                         (i32.and
                                                                          (i32.add
                                                                           (tee_local $2
                                                                            (i32.load8_u
                                                                             (get_local $1)
                                                                            )
                                                                           )
                                                                           (i32.const -48)
                                                                          )
                                                                          (i32.const 255)
                                                                         )
                                                                         (i32.const 9)
                                                                        )
                                                                       )
                                                                       (set_local $3
                                                                        (i64.add
                                                                         (i64.add
                                                                          (i64.mul
                                                                           (get_local $3)
                                                                           (i64.const 10)
                                                                          )
                                                                          (i64.shr_s
                                                                           (i64.shl
                                                                            (i64.extend_u/i32
                                                                             (get_local $2)
                                                                            )
                                                                            (i64.const 56)
                                                                           )
                                                                           (i64.const 56)
                                                                          )
                                                                         )
                                                                         (i64.const -48)
                                                                        )
                                                                       )
                                                                      )
                                                                      (set_local $1
                                                                       (i32.add
                                                                        (get_local $1)
                                                                        (i32.const 1)
                                                                       )
                                                                      )
                                                                      (br_if $label$206
                                                                       (tee_local $4
                                                                        (i32.add
                                                                         (get_local $4)
                                                                         (i32.const -1)
                                                                        )
                                                                       )
                                                                      )
                                                                      (br $label$203)
                                                                     )
                                                                    )
                                                                    (br_if $label$204
                                                                     (i32.eqz
                                                                      (tee_local $4
                                                                       (i32.load offset=164
                                                                        (get_local $5)
                                                                       )
                                                                      )
                                                                     )
                                                                    )
                                                                    (set_local $1
                                                                     (i32.load
                                                                      (i32.add
                                                                       (get_local $5)
                                                                       (i32.const 168)
                                                                      )
                                                                     )
                                                                    )
                                                                    (set_local $3
                                                                     (i64.const 0)
                                                                    )
                                                                    (loop $label$208
                                                                     (block $label$209
                                                                      (br_if $label$209
                                                                       (i32.gt_u
                                                                        (i32.and
                                                                         (i32.add
                                                                          (tee_local $2
                                                                           (i32.load8_u
                                                                            (get_local $1)
                                                                           )
                                                                          )
                                                                          (i32.const -48)
                                                                         )
                                                                         (i32.const 255)
                                                                        )
                                                                        (i32.const 9)
                                                                       )
                                                                      )
                                                                      (set_local $3
                                                                       (i64.add
                                                                        (i64.add
                                                                         (i64.mul
                                                                          (get_local $3)
                                                                          (i64.const 10)
                                                                         )
                                                                         (i64.shr_s
                                                                          (i64.shl
                                                                           (i64.extend_u/i32
                                                                            (get_local $2)
                                                                           )
                                                                           (i64.const 56)
                                                                          )
                                                                          (i64.const 56)
                                                                         )
                                                                        )
                                                                        (i64.const -48)
                                                                       )
                                                                      )
                                                                     )
                                                                     (set_local $1
                                                                      (i32.add
                                                                       (get_local $1)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (br_if $label$208
                                                                      (tee_local $4
                                                                       (i32.add
                                                                        (get_local $4)
                                                                        (i32.const -1)
                                                                       )
                                                                      )
                                                                     )
                                                                     (br $label$203)
                                                                    )
                                                                   )
                                                                   (set_local $3
                                                                    (i64.const 0)
                                                                   )
                                                                  )
                                                                  (i64.store offset=8
                                                                   (get_local $0)
                                                                   (i64.const 1397703940)
                                                                  )
                                                                  (i64.store
                                                                   (get_local $0)
                                                                   (get_local $3)
                                                                  )
                                                                  (call $eosio_assert
                                                                   (i64.lt_u
                                                                    (i64.add
                                                                     (get_local $3)
                                                                     (i64.const 4611686018427387903)
                                                                    )
                                                                    (i64.const 9223372036854775807)
                                                                   )
                                                                   (i32.const 368)
                                                                  )
                                                                  (set_local $3
                                                                   (i64.shr_u
                                                                    (i64.load offset=8
                                                                     (get_local $0)
                                                                    )
                                                                    (i64.const 8)
                                                                   )
                                                                  )
                                                                  (set_local $1
                                                                   (i32.const 0)
                                                                  )
                                                                  (block $label$210
                                                                   (block $label$211
                                                                    (loop $label$212
                                                                     (br_if $label$211
                                                                      (i32.gt_u
                                                                       (i32.add
                                                                        (i32.shl
                                                                         (i32.wrap/i64
                                                                          (get_local $3)
                                                                         )
                                                                         (i32.const 24)
                                                                        )
                                                                        (i32.const -1073741825)
                                                                       )
                                                                       (i32.const 452984830)
                                                                      )
                                                                     )
                                                                     (block $label$213
                                                                      (br_if $label$213
                                                                       (i64.ne
                                                                        (i64.and
                                                                         (tee_local $3
                                                                          (i64.shr_u
                                                                           (get_local $3)
                                                                           (i64.const 8)
                                                                          )
                                                                         )
                                                                         (i64.const 255)
                                                                        )
                                                                        (i64.const 0)
                                                                       )
                                                                      )
                                                                      (loop $label$214
                                                                       (br_if $label$211
                                                                        (i64.ne
                                                                         (i64.and
                                                                          (tee_local $3
                                                                           (i64.shr_u
                                                                            (get_local $3)
                                                                            (i64.const 8)
                                                                           )
                                                                          )
                                                                          (i64.const 255)
                                                                         )
                                                                         (i64.const 0)
                                                                        )
                                                                       )
                                                                       (br_if $label$214
                                                                        (i32.lt_s
                                                                         (tee_local $1
                                                                          (i32.add
                                                                           (get_local $1)
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (i32.const 7)
                                                                        )
                                                                       )
                                                                      )
                                                                     )
                                                                     (set_local $4
                                                                      (i32.const 1)
                                                                     )
                                                                     (br_if $label$212
                                                                      (i32.lt_s
                                                                       (tee_local $1
                                                                        (i32.add
                                                                         (get_local $1)
                                                                         (i32.const 1)
                                                                        )
                                                                       )
                                                                       (i32.const 7)
                                                                      )
                                                                     )
                                                                     (br $label$210)
                                                                    )
                                                                   )
                                                                   (set_local $4
                                                                    (i32.const 0)
                                                                   )
                                                                  )
                                                                  (call $eosio_assert
                                                                   (get_local $4)
                                                                   (i32.const 48)
                                                                  )
                                                                  (br_if $label$0
                                                                   (i32.eqz
                                                                    (i32.and
                                                                     (i32.load8_u offset=160
                                                                      (get_local $5)
                                                                     )
                                                                     (i32.const 1)
                                                                    )
                                                                   )
                                                                  )
                                                                  (call $_ZdlPv
                                                                   (i32.load
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 168)
                                                                    )
                                                                   )
                                                                  )
                                                                  (br $label$0)
                                                                 )
                                                                 (br_if $label$59
                                                                  (i64.lt_u
                                                                   (get_local $3)
                                                                   (i64.const 150360)
                                                                  )
                                                                 )
                                                                 (i32.store
                                                                  (i32.add
                                                                   (get_local $5)
                                                                   (i32.const 120)
                                                                  )
                                                                  (i32.const 0)
                                                                 )
                                                                 (i64.store offset=112
                                                                  (get_local $5)
                                                                  (i64.const 0)
                                                                 )
                                                                 (br_if $label$8
                                                                  (i32.ge_u
                                                                   (tee_local $1
                                                                    (call $strlen
                                                                     (i32.const 256)
                                                                    )
                                                                   )
                                                                   (i32.const -16)
                                                                  )
                                                                 )
                                                                 (br_if $label$54
                                                                  (i32.ge_u
                                                                   (get_local $1)
                                                                   (i32.const 11)
                                                                  )
                                                                 )
                                                                 (i32.store8 offset=112
                                                                  (get_local $5)
                                                                  (i32.shl
                                                                   (get_local $1)
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (set_local $4
                                                                  (i32.or
                                                                   (i32.add
                                                                    (get_local $5)
                                                                    (i32.const 112)
                                                                   )
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (set_local $2
                                                                  (i32.add
                                                                   (get_local $5)
                                                                   (i32.const 112)
                                                                  )
                                                                 )
                                                                 (br_if $label$53
                                                                  (get_local $1)
                                                                 )
                                                                 (br $label$52)
                                                                )
                                                                (set_local $4
                                                                 (call $_Znwj
                                                                  (tee_local $2
                                                                   (i32.and
                                                                    (i32.add
                                                                     (get_local $1)
                                                                     (i32.const 16)
                                                                    )
                                                                    (i32.const -16)
                                                                   )
                                                                  )
                                                                 )
                                                                )
                                                                (i32.store offset=144
                                                                 (get_local $5)
                                                                 (i32.or
                                                                  (get_local $2)
                                                                  (i32.const 1)
                                                                 )
                                                                )
                                                                (i32.store offset=152
                                                                 (get_local $5)
                                                                 (get_local $4)
                                                                )
                                                                (i32.store offset=148
                                                                 (get_local $5)
                                                                 (get_local $1)
                                                                )
                                                                (set_local $2
                                                                 (i32.add
                                                                  (get_local $5)
                                                                  (i32.const 144)
                                                                 )
                                                                )
                                                               )
                                                               (drop
                                                                (call $memcpy
                                                                 (get_local $4)
                                                                 (i32.const 224)
                                                                 (get_local $1)
                                                                )
                                                               )
                                                              )
                                                              (i32.store8
                                                               (i32.add
                                                                (get_local $4)
                                                                (get_local $1)
                                                               )
                                                               (i32.const 0)
                                                              )
                                                              (block $label$215
                                                               (block $label$216
                                                                (block $label$217
                                                                 (br_if $label$217
                                                                  (i32.and
                                                                   (tee_local $1
                                                                    (i32.load8_u offset=144
                                                                     (get_local $5)
                                                                    )
                                                                   )
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (br_if $label$216
                                                                  (i32.eqz
                                                                   (tee_local $4
                                                                    (i32.shr_u
                                                                     (get_local $1)
                                                                     (i32.const 1)
                                                                    )
                                                                   )
                                                                  )
                                                                 )
                                                                 (set_local $1
                                                                  (i32.add
                                                                   (get_local $2)
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (set_local $3
                                                                  (i64.const 0)
                                                                 )
                                                                 (loop $label$218
                                                                  (block $label$219
                                                                   (br_if $label$219
                                                                    (i32.gt_u
                                                                     (i32.and
                                                                      (i32.add
                                                                       (tee_local $2
                                                                        (i32.load8_u
                                                                         (get_local $1)
                                                                        )
                                                                       )
                                                                       (i32.const -48)
                                                                      )
                                                                      (i32.const 255)
                                                                     )
                                                                     (i32.const 9)
                                                                    )
                                                                   )
                                                                   (set_local $3
                                                                    (i64.add
                                                                     (i64.add
                                                                      (i64.mul
                                                                       (get_local $3)
                                                                       (i64.const 10)
                                                                      )
                                                                      (i64.shr_s
                                                                       (i64.shl
                                                                        (i64.extend_u/i32
                                                                         (get_local $2)
                                                                        )
                                                                        (i64.const 56)
                                                                       )
                                                                       (i64.const 56)
                                                                      )
                                                                     )
                                                                     (i64.const -48)
                                                                    )
                                                                   )
                                                                  )
                                                                  (set_local $1
                                                                   (i32.add
                                                                    (get_local $1)
                                                                    (i32.const 1)
                                                                   )
                                                                  )
                                                                  (br_if $label$218
                                                                   (tee_local $4
                                                                    (i32.add
                                                                     (get_local $4)
                                                                     (i32.const -1)
                                                                    )
                                                                   )
                                                                  )
                                                                  (br $label$215)
                                                                 )
                                                                )
                                                                (br_if $label$216
                                                                 (i32.eqz
                                                                  (tee_local $4
                                                                   (i32.load offset=148
                                                                    (get_local $5)
                                                                   )
                                                                  )
                                                                 )
                                                                )
                                                                (set_local $1
                                                                 (i32.load
                                                                  (i32.add
                                                                   (get_local $5)
                                                                   (i32.const 152)
                                                                  )
                                                                 )
                                                                )
                                                                (set_local $3
                                                                 (i64.const 0)
                                                                )
                                                                (loop $label$220
                                                                 (block $label$221
                                                                  (br_if $label$221
                                                                   (i32.gt_u
                                                                    (i32.and
                                                                     (i32.add
                                                                      (tee_local $2
                                                                       (i32.load8_u
                                                                        (get_local $1)
                                                                       )
                                                                      )
                                                                      (i32.const -48)
                                                                     )
                                                                     (i32.const 255)
                                                                    )
                                                                    (i32.const 9)
                                                                   )
                                                                  )
                                                                  (set_local $3
                                                                   (i64.add
                                                                    (i64.add
                                                                     (i64.mul
                                                                      (get_local $3)
                                                                      (i64.const 10)
                                                                     )
                                                                     (i64.shr_s
                                                                      (i64.shl
                                                                       (i64.extend_u/i32
                                                                        (get_local $2)
                                                                       )
                                                                       (i64.const 56)
                                                                      )
                                                                      (i64.const 56)
                                                                     )
                                                                    )
                                                                    (i64.const -48)
                                                                   )
                                                                  )
                                                                 )
                                                                 (set_local $1
                                                                  (i32.add
                                                                   (get_local $1)
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (br_if $label$220
                                                                  (tee_local $4
                                                                   (i32.add
                                                                    (get_local $4)
                                                                    (i32.const -1)
                                                                   )
                                                                  )
                                                                 )
                                                                 (br $label$215)
                                                                )
                                                               )
                                                               (set_local $3
                                                                (i64.const 0)
                                                               )
                                                              )
                                                              (i64.store offset=8
                                                               (get_local $0)
                                                               (i64.const 1397703940)
                                                              )
                                                              (i64.store
                                                               (get_local $0)
                                                               (get_local $3)
                                                              )
                                                              (call $eosio_assert
                                                               (i64.lt_u
                                                                (i64.add
                                                                 (get_local $3)
                                                                 (i64.const 4611686018427387903)
                                                                )
                                                                (i64.const 9223372036854775807)
                                                               )
                                                               (i32.const 368)
                                                              )
                                                              (set_local $3
                                                               (i64.shr_u
                                                                (i64.load offset=8
                                                                 (get_local $0)
                                                                )
                                                                (i64.const 8)
                                                               )
                                                              )
                                                              (set_local $1
                                                               (i32.const 0)
                                                              )
                                                              (block $label$222
                                                               (block $label$223
                                                                (loop $label$224
                                                                 (br_if $label$223
                                                                  (i32.gt_u
                                                                   (i32.add
                                                                    (i32.shl
                                                                     (i32.wrap/i64
                                                                      (get_local $3)
                                                                     )
                                                                     (i32.const 24)
                                                                    )
                                                                    (i32.const -1073741825)
                                                                   )
                                                                   (i32.const 452984830)
                                                                  )
                                                                 )
                                                                 (block $label$225
                                                                  (br_if $label$225
                                                                   (i64.ne
                                                                    (i64.and
                                                                     (tee_local $3
                                                                      (i64.shr_u
                                                                       (get_local $3)
                                                                       (i64.const 8)
                                                                      )
                                                                     )
                                                                     (i64.const 255)
                                                                    )
                                                                    (i64.const 0)
                                                                   )
                                                                  )
                                                                  (loop $label$226
                                                                   (br_if $label$223
                                                                    (i64.ne
                                                                     (i64.and
                                                                      (tee_local $3
                                                                       (i64.shr_u
                                                                        (get_local $3)
                                                                        (i64.const 8)
                                                                       )
                                                                      )
                                                                      (i64.const 255)
                                                                     )
                                                                     (i64.const 0)
                                                                    )
                                                                   )
                                                                   (br_if $label$226
                                                                    (i32.lt_s
                                                                     (tee_local $1
                                                                      (i32.add
                                                                       (get_local $1)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (i32.const 7)
                                                                    )
                                                                   )
                                                                  )
                                                                 )
                                                                 (set_local $4
                                                                  (i32.const 1)
                                                                 )
                                                                 (br_if $label$224
                                                                  (i32.lt_s
                                                                   (tee_local $1
                                                                    (i32.add
                                                                     (get_local $1)
                                                                     (i32.const 1)
                                                                    )
                                                                   )
                                                                   (i32.const 7)
                                                                  )
                                                                 )
                                                                 (br $label$222)
                                                                )
                                                               )
                                                               (set_local $4
                                                                (i32.const 0)
                                                               )
                                                              )
                                                              (call $eosio_assert
                                                               (get_local $4)
                                                               (i32.const 48)
                                                              )
                                                              (br_if $label$0
                                                               (i32.eqz
                                                                (i32.and
                                                                 (i32.load8_u offset=144
                                                                  (get_local $5)
                                                                 )
                                                                 (i32.const 1)
                                                                )
                                                               )
                                                              )
                                                              (call $_ZdlPv
                                                               (i32.load
                                                                (i32.add
                                                                 (get_local $5)
                                                                 (i32.const 152)
                                                                )
                                                               )
                                                              )
                                                              (br $label$0)
                                                             )
                                                             (br_if $label$55
                                                              (i64.lt_u
                                                               (get_local $3)
                                                               (i64.const 128880)
                                                              )
                                                             )
                                                             (i32.store
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 104)
                                                              )
                                                              (i32.const 0)
                                                             )
                                                             (i64.store offset=96
                                                              (get_local $5)
                                                              (i64.const 0)
                                                             )
                                                             (br_if $label$7
                                                              (i32.ge_u
                                                               (tee_local $1
                                                                (call $strlen
                                                                 (i32.const 272)
                                                                )
                                                               )
                                                               (i32.const -16)
                                                              )
                                                             )
                                                             (br_if $label$50
                                                              (i32.ge_u
                                                               (get_local $1)
                                                               (i32.const 11)
                                                              )
                                                             )
                                                             (i32.store8 offset=96
                                                              (get_local $5)
                                                              (i32.shl
                                                               (get_local $1)
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (set_local $4
                                                              (i32.or
                                                               (i32.add
                                                                (get_local $5)
                                                                (i32.const 96)
                                                               )
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (set_local $2
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 96)
                                                              )
                                                             )
                                                             (br_if $label$49
                                                              (get_local $1)
                                                             )
                                                             (br $label$48)
                                                            )
                                                            (set_local $4
                                                             (call $_Znwj
                                                              (tee_local $2
                                                               (i32.and
                                                                (i32.add
                                                                 (get_local $1)
                                                                 (i32.const 16)
                                                                )
                                                                (i32.const -16)
                                                               )
                                                              )
                                                             )
                                                            )
                                                            (i32.store offset=128
                                                             (get_local $5)
                                                             (i32.or
                                                              (get_local $2)
                                                              (i32.const 1)
                                                             )
                                                            )
                                                            (i32.store offset=136
                                                             (get_local $5)
                                                             (get_local $4)
                                                            )
                                                            (i32.store offset=132
                                                             (get_local $5)
                                                             (get_local $1)
                                                            )
                                                            (set_local $2
                                                             (i32.add
                                                              (get_local $5)
                                                              (i32.const 128)
                                                             )
                                                            )
                                                           )
                                                           (drop
                                                            (call $memcpy
                                                             (get_local $4)
                                                             (i32.const 240)
                                                             (get_local $1)
                                                            )
                                                           )
                                                          )
                                                          (i32.store8
                                                           (i32.add
                                                            (get_local $4)
                                                            (get_local $1)
                                                           )
                                                           (i32.const 0)
                                                          )
                                                          (block $label$227
                                                           (block $label$228
                                                            (block $label$229
                                                             (br_if $label$229
                                                              (i32.and
                                                               (tee_local $1
                                                                (i32.load8_u offset=128
                                                                 (get_local $5)
                                                                )
                                                               )
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (br_if $label$228
                                                              (i32.eqz
                                                               (tee_local $4
                                                                (i32.shr_u
                                                                 (get_local $1)
                                                                 (i32.const 1)
                                                                )
                                                               )
                                                              )
                                                             )
                                                             (set_local $1
                                                              (i32.add
                                                               (get_local $2)
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (set_local $3
                                                              (i64.const 0)
                                                             )
                                                             (loop $label$230
                                                              (block $label$231
                                                               (br_if $label$231
                                                                (i32.gt_u
                                                                 (i32.and
                                                                  (i32.add
                                                                   (tee_local $2
                                                                    (i32.load8_u
                                                                     (get_local $1)
                                                                    )
                                                                   )
                                                                   (i32.const -48)
                                                                  )
                                                                  (i32.const 255)
                                                                 )
                                                                 (i32.const 9)
                                                                )
                                                               )
                                                               (set_local $3
                                                                (i64.add
                                                                 (i64.add
                                                                  (i64.mul
                                                                   (get_local $3)
                                                                   (i64.const 10)
                                                                  )
                                                                  (i64.shr_s
                                                                   (i64.shl
                                                                    (i64.extend_u/i32
                                                                     (get_local $2)
                                                                    )
                                                                    (i64.const 56)
                                                                   )
                                                                   (i64.const 56)
                                                                  )
                                                                 )
                                                                 (i64.const -48)
                                                                )
                                                               )
                                                              )
                                                              (set_local $1
                                                               (i32.add
                                                                (get_local $1)
                                                                (i32.const 1)
                                                               )
                                                              )
                                                              (br_if $label$230
                                                               (tee_local $4
                                                                (i32.add
                                                                 (get_local $4)
                                                                 (i32.const -1)
                                                                )
                                                               )
                                                              )
                                                              (br $label$227)
                                                             )
                                                            )
                                                            (br_if $label$228
                                                             (i32.eqz
                                                              (tee_local $4
                                                               (i32.load offset=132
                                                                (get_local $5)
                                                               )
                                                              )
                                                             )
                                                            )
                                                            (set_local $1
                                                             (i32.load
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 136)
                                                              )
                                                             )
                                                            )
                                                            (set_local $3
                                                             (i64.const 0)
                                                            )
                                                            (loop $label$232
                                                             (block $label$233
                                                              (br_if $label$233
                                                               (i32.gt_u
                                                                (i32.and
                                                                 (i32.add
                                                                  (tee_local $2
                                                                   (i32.load8_u
                                                                    (get_local $1)
                                                                   )
                                                                  )
                                                                  (i32.const -48)
                                                                 )
                                                                 (i32.const 255)
                                                                )
                                                                (i32.const 9)
                                                               )
                                                              )
                                                              (set_local $3
                                                               (i64.add
                                                                (i64.add
                                                                 (i64.mul
                                                                  (get_local $3)
                                                                  (i64.const 10)
                                                                 )
                                                                 (i64.shr_s
                                                                  (i64.shl
                                                                   (i64.extend_u/i32
                                                                    (get_local $2)
                                                                   )
                                                                   (i64.const 56)
                                                                  )
                                                                  (i64.const 56)
                                                                 )
                                                                )
                                                                (i64.const -48)
                                                               )
                                                              )
                                                             )
                                                             (set_local $1
                                                              (i32.add
                                                               (get_local $1)
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (br_if $label$232
                                                              (tee_local $4
                                                               (i32.add
                                                                (get_local $4)
                                                                (i32.const -1)
                                                               )
                                                              )
                                                             )
                                                             (br $label$227)
                                                            )
                                                           )
                                                           (set_local $3
                                                            (i64.const 0)
                                                           )
                                                          )
                                                          (i64.store offset=8
                                                           (get_local $0)
                                                           (i64.const 1397703940)
                                                          )
                                                          (i64.store
                                                           (get_local $0)
                                                           (get_local $3)
                                                          )
                                                          (call $eosio_assert
                                                           (i64.lt_u
                                                            (i64.add
                                                             (get_local $3)
                                                             (i64.const 4611686018427387903)
                                                            )
                                                            (i64.const 9223372036854775807)
                                                           )
                                                           (i32.const 368)
                                                          )
                                                          (set_local $3
                                                           (i64.shr_u
                                                            (i64.load offset=8
                                                             (get_local $0)
                                                            )
                                                            (i64.const 8)
                                                           )
                                                          )
                                                          (set_local $1
                                                           (i32.const 0)
                                                          )
                                                          (block $label$234
                                                           (block $label$235
                                                            (loop $label$236
                                                             (br_if $label$235
                                                              (i32.gt_u
                                                               (i32.add
                                                                (i32.shl
                                                                 (i32.wrap/i64
                                                                  (get_local $3)
                                                                 )
                                                                 (i32.const 24)
                                                                )
                                                                (i32.const -1073741825)
                                                               )
                                                               (i32.const 452984830)
                                                              )
                                                             )
                                                             (block $label$237
                                                              (br_if $label$237
                                                               (i64.ne
                                                                (i64.and
                                                                 (tee_local $3
                                                                  (i64.shr_u
                                                                   (get_local $3)
                                                                   (i64.const 8)
                                                                  )
                                                                 )
                                                                 (i64.const 255)
                                                                )
                                                                (i64.const 0)
                                                               )
                                                              )
                                                              (loop $label$238
                                                               (br_if $label$235
                                                                (i64.ne
                                                                 (i64.and
                                                                  (tee_local $3
                                                                   (i64.shr_u
                                                                    (get_local $3)
                                                                    (i64.const 8)
                                                                   )
                                                                  )
                                                                  (i64.const 255)
                                                                 )
                                                                 (i64.const 0)
                                                                )
                                                               )
                                                               (br_if $label$238
                                                                (i32.lt_s
                                                                 (tee_local $1
                                                                  (i32.add
                                                                   (get_local $1)
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (i32.const 7)
                                                                )
                                                               )
                                                              )
                                                             )
                                                             (set_local $4
                                                              (i32.const 1)
                                                             )
                                                             (br_if $label$236
                                                              (i32.lt_s
                                                               (tee_local $1
                                                                (i32.add
                                                                 (get_local $1)
                                                                 (i32.const 1)
                                                                )
                                                               )
                                                               (i32.const 7)
                                                              )
                                                             )
                                                             (br $label$234)
                                                            )
                                                           )
                                                           (set_local $4
                                                            (i32.const 0)
                                                           )
                                                          )
                                                          (call $eosio_assert
                                                           (get_local $4)
                                                           (i32.const 48)
                                                          )
                                                          (br_if $label$0
                                                           (i32.eqz
                                                            (i32.and
                                                             (i32.load8_u offset=128
                                                              (get_local $5)
                                                             )
                                                             (i32.const 1)
                                                            )
                                                           )
                                                          )
                                                          (call $_ZdlPv
                                                           (i32.load
                                                            (i32.add
                                                             (get_local $5)
                                                             (i32.const 136)
                                                            )
                                                           )
                                                          )
                                                          (br $label$0)
                                                         )
                                                         (br_if $label$51
                                                          (i64.lt_u
                                                           (get_local $3)
                                                           (i64.const 107400)
                                                          )
                                                         )
                                                         (i32.store
                                                          (i32.add
                                                           (get_local $5)
                                                           (i32.const 88)
                                                          )
                                                          (i32.const 0)
                                                         )
                                                         (i64.store offset=80
                                                          (get_local $5)
                                                          (i64.const 0)
                                                         )
                                                         (br_if $label$6
                                                          (i32.ge_u
                                                           (tee_local $1
                                                            (call $strlen
                                                             (i32.const 288)
                                                            )
                                                           )
                                                           (i32.const -16)
                                                          )
                                                         )
                                                         (br_if $label$46
                                                          (i32.ge_u
                                                           (get_local $1)
                                                           (i32.const 11)
                                                          )
                                                         )
                                                         (i32.store8 offset=80
                                                          (get_local $5)
                                                          (i32.shl
                                                           (get_local $1)
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (set_local $4
                                                          (i32.or
                                                           (i32.add
                                                            (get_local $5)
                                                            (i32.const 80)
                                                           )
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (set_local $2
                                                          (i32.add
                                                           (get_local $5)
                                                           (i32.const 80)
                                                          )
                                                         )
                                                         (br_if $label$45
                                                          (get_local $1)
                                                         )
                                                         (br $label$44)
                                                        )
                                                        (set_local $4
                                                         (call $_Znwj
                                                          (tee_local $2
                                                           (i32.and
                                                            (i32.add
                                                             (get_local $1)
                                                             (i32.const 16)
                                                            )
                                                            (i32.const -16)
                                                           )
                                                          )
                                                         )
                                                        )
                                                        (i32.store offset=112
                                                         (get_local $5)
                                                         (i32.or
                                                          (get_local $2)
                                                          (i32.const 1)
                                                         )
                                                        )
                                                        (i32.store offset=120
                                                         (get_local $5)
                                                         (get_local $4)
                                                        )
                                                        (i32.store offset=116
                                                         (get_local $5)
                                                         (get_local $1)
                                                        )
                                                        (set_local $2
                                                         (i32.add
                                                          (get_local $5)
                                                          (i32.const 112)
                                                         )
                                                        )
                                                       )
                                                       (drop
                                                        (call $memcpy
                                                         (get_local $4)
                                                         (i32.const 256)
                                                         (get_local $1)
                                                        )
                                                       )
                                                      )
                                                      (i32.store8
                                                       (i32.add
                                                        (get_local $4)
                                                        (get_local $1)
                                                       )
                                                       (i32.const 0)
                                                      )
                                                      (block $label$239
                                                       (block $label$240
                                                        (block $label$241
                                                         (br_if $label$241
                                                          (i32.and
                                                           (tee_local $1
                                                            (i32.load8_u offset=112
                                                             (get_local $5)
                                                            )
                                                           )
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (br_if $label$240
                                                          (i32.eqz
                                                           (tee_local $4
                                                            (i32.shr_u
                                                             (get_local $1)
                                                             (i32.const 1)
                                                            )
                                                           )
                                                          )
                                                         )
                                                         (set_local $1
                                                          (i32.add
                                                           (get_local $2)
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (set_local $3
                                                          (i64.const 0)
                                                         )
                                                         (loop $label$242
                                                          (block $label$243
                                                           (br_if $label$243
                                                            (i32.gt_u
                                                             (i32.and
                                                              (i32.add
                                                               (tee_local $2
                                                                (i32.load8_u
                                                                 (get_local $1)
                                                                )
                                                               )
                                                               (i32.const -48)
                                                              )
                                                              (i32.const 255)
                                                             )
                                                             (i32.const 9)
                                                            )
                                                           )
                                                           (set_local $3
                                                            (i64.add
                                                             (i64.add
                                                              (i64.mul
                                                               (get_local $3)
                                                               (i64.const 10)
                                                              )
                                                              (i64.shr_s
                                                               (i64.shl
                                                                (i64.extend_u/i32
                                                                 (get_local $2)
                                                                )
                                                                (i64.const 56)
                                                               )
                                                               (i64.const 56)
                                                              )
                                                             )
                                                             (i64.const -48)
                                                            )
                                                           )
                                                          )
                                                          (set_local $1
                                                           (i32.add
                                                            (get_local $1)
                                                            (i32.const 1)
                                                           )
                                                          )
                                                          (br_if $label$242
                                                           (tee_local $4
                                                            (i32.add
                                                             (get_local $4)
                                                             (i32.const -1)
                                                            )
                                                           )
                                                          )
                                                          (br $label$239)
                                                         )
                                                        )
                                                        (br_if $label$240
                                                         (i32.eqz
                                                          (tee_local $4
                                                           (i32.load offset=116
                                                            (get_local $5)
                                                           )
                                                          )
                                                         )
                                                        )
                                                        (set_local $1
                                                         (i32.load
                                                          (i32.add
                                                           (get_local $5)
                                                           (i32.const 120)
                                                          )
                                                         )
                                                        )
                                                        (set_local $3
                                                         (i64.const 0)
                                                        )
                                                        (loop $label$244
                                                         (block $label$245
                                                          (br_if $label$245
                                                           (i32.gt_u
                                                            (i32.and
                                                             (i32.add
                                                              (tee_local $2
                                                               (i32.load8_u
                                                                (get_local $1)
                                                               )
                                                              )
                                                              (i32.const -48)
                                                             )
                                                             (i32.const 255)
                                                            )
                                                            (i32.const 9)
                                                           )
                                                          )
                                                          (set_local $3
                                                           (i64.add
                                                            (i64.add
                                                             (i64.mul
                                                              (get_local $3)
                                                              (i64.const 10)
                                                             )
                                                             (i64.shr_s
                                                              (i64.shl
                                                               (i64.extend_u/i32
                                                                (get_local $2)
                                                               )
                                                               (i64.const 56)
                                                              )
                                                              (i64.const 56)
                                                             )
                                                            )
                                                            (i64.const -48)
                                                           )
                                                          )
                                                         )
                                                         (set_local $1
                                                          (i32.add
                                                           (get_local $1)
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (br_if $label$244
                                                          (tee_local $4
                                                           (i32.add
                                                            (get_local $4)
                                                            (i32.const -1)
                                                           )
                                                          )
                                                         )
                                                         (br $label$239)
                                                        )
                                                       )
                                                       (set_local $3
                                                        (i64.const 0)
                                                       )
                                                      )
                                                      (i64.store offset=8
                                                       (get_local $0)
                                                       (i64.const 1397703940)
                                                      )
                                                      (i64.store
                                                       (get_local $0)
                                                       (get_local $3)
                                                      )
                                                      (call $eosio_assert
                                                       (i64.lt_u
                                                        (i64.add
                                                         (get_local $3)
                                                         (i64.const 4611686018427387903)
                                                        )
                                                        (i64.const 9223372036854775807)
                                                       )
                                                       (i32.const 368)
                                                      )
                                                      (set_local $3
                                                       (i64.shr_u
                                                        (i64.load offset=8
                                                         (get_local $0)
                                                        )
                                                        (i64.const 8)
                                                       )
                                                      )
                                                      (set_local $1
                                                       (i32.const 0)
                                                      )
                                                      (block $label$246
                                                       (block $label$247
                                                        (loop $label$248
                                                         (br_if $label$247
                                                          (i32.gt_u
                                                           (i32.add
                                                            (i32.shl
                                                             (i32.wrap/i64
                                                              (get_local $3)
                                                             )
                                                             (i32.const 24)
                                                            )
                                                            (i32.const -1073741825)
                                                           )
                                                           (i32.const 452984830)
                                                          )
                                                         )
                                                         (block $label$249
                                                          (br_if $label$249
                                                           (i64.ne
                                                            (i64.and
                                                             (tee_local $3
                                                              (i64.shr_u
                                                               (get_local $3)
                                                               (i64.const 8)
                                                              )
                                                             )
                                                             (i64.const 255)
                                                            )
                                                            (i64.const 0)
                                                           )
                                                          )
                                                          (loop $label$250
                                                           (br_if $label$247
                                                            (i64.ne
                                                             (i64.and
                                                              (tee_local $3
                                                               (i64.shr_u
                                                                (get_local $3)
                                                                (i64.const 8)
                                                               )
                                                              )
                                                              (i64.const 255)
                                                             )
                                                             (i64.const 0)
                                                            )
                                                           )
                                                           (br_if $label$250
                                                            (i32.lt_s
                                                             (tee_local $1
                                                              (i32.add
                                                               (get_local $1)
                                                               (i32.const 1)
                                                              )
                                                             )
                                                             (i32.const 7)
                                                            )
                                                           )
                                                          )
                                                         )
                                                         (set_local $4
                                                          (i32.const 1)
                                                         )
                                                         (br_if $label$248
                                                          (i32.lt_s
                                                           (tee_local $1
                                                            (i32.add
                                                             (get_local $1)
                                                             (i32.const 1)
                                                            )
                                                           )
                                                           (i32.const 7)
                                                          )
                                                         )
                                                         (br $label$246)
                                                        )
                                                       )
                                                       (set_local $4
                                                        (i32.const 0)
                                                       )
                                                      )
                                                      (call $eosio_assert
                                                       (get_local $4)
                                                       (i32.const 48)
                                                      )
                                                      (br_if $label$0
                                                       (i32.eqz
                                                        (i32.and
                                                         (i32.load8_u offset=112
                                                          (get_local $5)
                                                         )
                                                         (i32.const 1)
                                                        )
                                                       )
                                                      )
                                                      (call $_ZdlPv
                                                       (i32.load
                                                        (i32.add
                                                         (get_local $5)
                                                         (i32.const 120)
                                                        )
                                                       )
                                                      )
                                                      (br $label$0)
                                                     )
                                                     (br_if $label$47
                                                      (i64.lt_u
                                                       (get_local $3)
                                                       (i64.const 85920)
                                                      )
                                                     )
                                                     (i32.store
                                                      (i32.add
                                                       (get_local $5)
                                                       (i32.const 72)
                                                      )
                                                      (i32.const 0)
                                                     )
                                                     (i64.store offset=64
                                                      (get_local $5)
                                                      (i64.const 0)
                                                     )
                                                     (br_if $label$5
                                                      (i32.ge_u
                                                       (tee_local $1
                                                        (call $strlen
                                                         (i32.const 304)
                                                        )
                                                       )
                                                       (i32.const -16)
                                                      )
                                                     )
                                                     (br_if $label$42
                                                      (i32.ge_u
                                                       (get_local $1)
                                                       (i32.const 11)
                                                      )
                                                     )
                                                     (i32.store8 offset=64
                                                      (get_local $5)
                                                      (i32.shl
                                                       (get_local $1)
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (set_local $4
                                                      (i32.or
                                                       (i32.add
                                                        (get_local $5)
                                                        (i32.const 64)
                                                       )
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (set_local $2
                                                      (i32.add
                                                       (get_local $5)
                                                       (i32.const 64)
                                                      )
                                                     )
                                                     (br_if $label$41
                                                      (get_local $1)
                                                     )
                                                     (br $label$40)
                                                    )
                                                    (set_local $4
                                                     (call $_Znwj
                                                      (tee_local $2
                                                       (i32.and
                                                        (i32.add
                                                         (get_local $1)
                                                         (i32.const 16)
                                                        )
                                                        (i32.const -16)
                                                       )
                                                      )
                                                     )
                                                    )
                                                    (i32.store offset=96
                                                     (get_local $5)
                                                     (i32.or
                                                      (get_local $2)
                                                      (i32.const 1)
                                                     )
                                                    )
                                                    (i32.store offset=104
                                                     (get_local $5)
                                                     (get_local $4)
                                                    )
                                                    (i32.store offset=100
                                                     (get_local $5)
                                                     (get_local $1)
                                                    )
                                                    (set_local $2
                                                     (i32.add
                                                      (get_local $5)
                                                      (i32.const 96)
                                                     )
                                                    )
                                                   )
                                                   (drop
                                                    (call $memcpy
                                                     (get_local $4)
                                                     (i32.const 272)
                                                     (get_local $1)
                                                    )
                                                   )
                                                  )
                                                  (i32.store8
                                                   (i32.add
                                                    (get_local $4)
                                                    (get_local $1)
                                                   )
                                                   (i32.const 0)
                                                  )
                                                  (block $label$251
                                                   (block $label$252
                                                    (block $label$253
                                                     (br_if $label$253
                                                      (i32.and
                                                       (tee_local $1
                                                        (i32.load8_u offset=96
                                                         (get_local $5)
                                                        )
                                                       )
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (br_if $label$252
                                                      (i32.eqz
                                                       (tee_local $4
                                                        (i32.shr_u
                                                         (get_local $1)
                                                         (i32.const 1)
                                                        )
                                                       )
                                                      )
                                                     )
                                                     (set_local $1
                                                      (i32.add
                                                       (get_local $2)
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (set_local $3
                                                      (i64.const 0)
                                                     )
                                                     (loop $label$254
                                                      (block $label$255
                                                       (br_if $label$255
                                                        (i32.gt_u
                                                         (i32.and
                                                          (i32.add
                                                           (tee_local $2
                                                            (i32.load8_u
                                                             (get_local $1)
                                                            )
                                                           )
                                                           (i32.const -48)
                                                          )
                                                          (i32.const 255)
                                                         )
                                                         (i32.const 9)
                                                        )
                                                       )
                                                       (set_local $3
                                                        (i64.add
                                                         (i64.add
                                                          (i64.mul
                                                           (get_local $3)
                                                           (i64.const 10)
                                                          )
                                                          (i64.shr_s
                                                           (i64.shl
                                                            (i64.extend_u/i32
                                                             (get_local $2)
                                                            )
                                                            (i64.const 56)
                                                           )
                                                           (i64.const 56)
                                                          )
                                                         )
                                                         (i64.const -48)
                                                        )
                                                       )
                                                      )
                                                      (set_local $1
                                                       (i32.add
                                                        (get_local $1)
                                                        (i32.const 1)
                                                       )
                                                      )
                                                      (br_if $label$254
                                                       (tee_local $4
                                                        (i32.add
                                                         (get_local $4)
                                                         (i32.const -1)
                                                        )
                                                       )
                                                      )
                                                      (br $label$251)
                                                     )
                                                    )
                                                    (br_if $label$252
                                                     (i32.eqz
                                                      (tee_local $4
                                                       (i32.load offset=100
                                                        (get_local $5)
                                                       )
                                                      )
                                                     )
                                                    )
                                                    (set_local $1
                                                     (i32.load
                                                      (i32.add
                                                       (get_local $5)
                                                       (i32.const 104)
                                                      )
                                                     )
                                                    )
                                                    (set_local $3
                                                     (i64.const 0)
                                                    )
                                                    (loop $label$256
                                                     (block $label$257
                                                      (br_if $label$257
                                                       (i32.gt_u
                                                        (i32.and
                                                         (i32.add
                                                          (tee_local $2
                                                           (i32.load8_u
                                                            (get_local $1)
                                                           )
                                                          )
                                                          (i32.const -48)
                                                         )
                                                         (i32.const 255)
                                                        )
                                                        (i32.const 9)
                                                       )
                                                      )
                                                      (set_local $3
                                                       (i64.add
                                                        (i64.add
                                                         (i64.mul
                                                          (get_local $3)
                                                          (i64.const 10)
                                                         )
                                                         (i64.shr_s
                                                          (i64.shl
                                                           (i64.extend_u/i32
                                                            (get_local $2)
                                                           )
                                                           (i64.const 56)
                                                          )
                                                          (i64.const 56)
                                                         )
                                                        )
                                                        (i64.const -48)
                                                       )
                                                      )
                                                     )
                                                     (set_local $1
                                                      (i32.add
                                                       (get_local $1)
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (br_if $label$256
                                                      (tee_local $4
                                                       (i32.add
                                                        (get_local $4)
                                                        (i32.const -1)
                                                       )
                                                      )
                                                     )
                                                     (br $label$251)
                                                    )
                                                   )
                                                   (set_local $3
                                                    (i64.const 0)
                                                   )
                                                  )
                                                  (i64.store offset=8
                                                   (get_local $0)
                                                   (i64.const 1397703940)
                                                  )
                                                  (i64.store
                                                   (get_local $0)
                                                   (get_local $3)
                                                  )
                                                  (call $eosio_assert
                                                   (i64.lt_u
                                                    (i64.add
                                                     (get_local $3)
                                                     (i64.const 4611686018427387903)
                                                    )
                                                    (i64.const 9223372036854775807)
                                                   )
                                                   (i32.const 368)
                                                  )
                                                  (set_local $3
                                                   (i64.shr_u
                                                    (i64.load offset=8
                                                     (get_local $0)
                                                    )
                                                    (i64.const 8)
                                                   )
                                                  )
                                                  (set_local $1
                                                   (i32.const 0)
                                                  )
                                                  (block $label$258
                                                   (block $label$259
                                                    (loop $label$260
                                                     (br_if $label$259
                                                      (i32.gt_u
                                                       (i32.add
                                                        (i32.shl
                                                         (i32.wrap/i64
                                                          (get_local $3)
                                                         )
                                                         (i32.const 24)
                                                        )
                                                        (i32.const -1073741825)
                                                       )
                                                       (i32.const 452984830)
                                                      )
                                                     )
                                                     (block $label$261
                                                      (br_if $label$261
                                                       (i64.ne
                                                        (i64.and
                                                         (tee_local $3
                                                          (i64.shr_u
                                                           (get_local $3)
                                                           (i64.const 8)
                                                          )
                                                         )
                                                         (i64.const 255)
                                                        )
                                                        (i64.const 0)
                                                       )
                                                      )
                                                      (loop $label$262
                                                       (br_if $label$259
                                                        (i64.ne
                                                         (i64.and
                                                          (tee_local $3
                                                           (i64.shr_u
                                                            (get_local $3)
                                                            (i64.const 8)
                                                           )
                                                          )
                                                          (i64.const 255)
                                                         )
                                                         (i64.const 0)
                                                        )
                                                       )
                                                       (br_if $label$262
                                                        (i32.lt_s
                                                         (tee_local $1
                                                          (i32.add
                                                           (get_local $1)
                                                           (i32.const 1)
                                                          )
                                                         )
                                                         (i32.const 7)
                                                        )
                                                       )
                                                      )
                                                     )
                                                     (set_local $4
                                                      (i32.const 1)
                                                     )
                                                     (br_if $label$260
                                                      (i32.lt_s
                                                       (tee_local $1
                                                        (i32.add
                                                         (get_local $1)
                                                         (i32.const 1)
                                                        )
                                                       )
                                                       (i32.const 7)
                                                      )
                                                     )
                                                     (br $label$258)
                                                    )
                                                   )
                                                   (set_local $4
                                                    (i32.const 0)
                                                   )
                                                  )
                                                  (call $eosio_assert
                                                   (get_local $4)
                                                   (i32.const 48)
                                                  )
                                                  (br_if $label$0
                                                   (i32.eqz
                                                    (i32.and
                                                     (i32.load8_u offset=96
                                                      (get_local $5)
                                                     )
                                                     (i32.const 1)
                                                    )
                                                   )
                                                  )
                                                  (call $_ZdlPv
                                                   (i32.load
                                                    (i32.add
                                                     (get_local $5)
                                                     (i32.const 104)
                                                    )
                                                   )
                                                  )
                                                  (br $label$0)
                                                 )
                                                 (br_if $label$43
                                                  (i64.lt_u
                                                   (get_local $3)
                                                   (i64.const 64440)
                                                  )
                                                 )
                                                 (i32.store
                                                  (i32.add
                                                   (get_local $5)
                                                   (i32.const 56)
                                                  )
                                                  (i32.const 0)
                                                 )
                                                 (i64.store offset=48
                                                  (get_local $5)
                                                  (i64.const 0)
                                                 )
                                                 (br_if $label$4
                                                  (i32.ge_u
                                                   (tee_local $1
                                                    (call $strlen
                                                     (i32.const 320)
                                                    )
                                                   )
                                                   (i32.const -16)
                                                  )
                                                 )
                                                 (br_if $label$38
                                                  (i32.ge_u
                                                   (get_local $1)
                                                   (i32.const 11)
                                                  )
                                                 )
                                                 (i32.store8 offset=48
                                                  (get_local $5)
                                                  (i32.shl
                                                   (get_local $1)
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (set_local $4
                                                  (i32.or
                                                   (i32.add
                                                    (get_local $5)
                                                    (i32.const 48)
                                                   )
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (set_local $2
                                                  (i32.add
                                                   (get_local $5)
                                                   (i32.const 48)
                                                  )
                                                 )
                                                 (br_if $label$37
                                                  (get_local $1)
                                                 )
                                                 (br $label$36)
                                                )
                                                (set_local $4
                                                 (call $_Znwj
                                                  (tee_local $2
                                                   (i32.and
                                                    (i32.add
                                                     (get_local $1)
                                                     (i32.const 16)
                                                    )
                                                    (i32.const -16)
                                                   )
                                                  )
                                                 )
                                                )
                                                (i32.store offset=80
                                                 (get_local $5)
                                                 (i32.or
                                                  (get_local $2)
                                                  (i32.const 1)
                                                 )
                                                )
                                                (i32.store offset=88
                                                 (get_local $5)
                                                 (get_local $4)
                                                )
                                                (i32.store offset=84
                                                 (get_local $5)
                                                 (get_local $1)
                                                )
                                                (set_local $2
                                                 (i32.add
                                                  (get_local $5)
                                                  (i32.const 80)
                                                 )
                                                )
                                               )
                                               (drop
                                                (call $memcpy
                                                 (get_local $4)
                                                 (i32.const 288)
                                                 (get_local $1)
                                                )
                                               )
                                              )
                                              (i32.store8
                                               (i32.add
                                                (get_local $4)
                                                (get_local $1)
                                               )
                                               (i32.const 0)
                                              )
                                              (block $label$263
                                               (block $label$264
                                                (block $label$265
                                                 (br_if $label$265
                                                  (i32.and
                                                   (tee_local $1
                                                    (i32.load8_u offset=80
                                                     (get_local $5)
                                                    )
                                                   )
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (br_if $label$264
                                                  (i32.eqz
                                                   (tee_local $4
                                                    (i32.shr_u
                                                     (get_local $1)
                                                     (i32.const 1)
                                                    )
                                                   )
                                                  )
                                                 )
                                                 (set_local $1
                                                  (i32.add
                                                   (get_local $2)
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (set_local $3
                                                  (i64.const 0)
                                                 )
                                                 (loop $label$266
                                                  (block $label$267
                                                   (br_if $label$267
                                                    (i32.gt_u
                                                     (i32.and
                                                      (i32.add
                                                       (tee_local $2
                                                        (i32.load8_u
                                                         (get_local $1)
                                                        )
                                                       )
                                                       (i32.const -48)
                                                      )
                                                      (i32.const 255)
                                                     )
                                                     (i32.const 9)
                                                    )
                                                   )
                                                   (set_local $3
                                                    (i64.add
                                                     (i64.add
                                                      (i64.mul
                                                       (get_local $3)
                                                       (i64.const 10)
                                                      )
                                                      (i64.shr_s
                                                       (i64.shl
                                                        (i64.extend_u/i32
                                                         (get_local $2)
                                                        )
                                                        (i64.const 56)
                                                       )
                                                       (i64.const 56)
                                                      )
                                                     )
                                                     (i64.const -48)
                                                    )
                                                   )
                                                  )
                                                  (set_local $1
                                                   (i32.add
                                                    (get_local $1)
                                                    (i32.const 1)
                                                   )
                                                  )
                                                  (br_if $label$266
                                                   (tee_local $4
                                                    (i32.add
                                                     (get_local $4)
                                                     (i32.const -1)
                                                    )
                                                   )
                                                  )
                                                  (br $label$263)
                                                 )
                                                )
                                                (br_if $label$264
                                                 (i32.eqz
                                                  (tee_local $4
                                                   (i32.load offset=84
                                                    (get_local $5)
                                                   )
                                                  )
                                                 )
                                                )
                                                (set_local $1
                                                 (i32.load
                                                  (i32.add
                                                   (get_local $5)
                                                   (i32.const 88)
                                                  )
                                                 )
                                                )
                                                (set_local $3
                                                 (i64.const 0)
                                                )
                                                (loop $label$268
                                                 (block $label$269
                                                  (br_if $label$269
                                                   (i32.gt_u
                                                    (i32.and
                                                     (i32.add
                                                      (tee_local $2
                                                       (i32.load8_u
                                                        (get_local $1)
                                                       )
                                                      )
                                                      (i32.const -48)
                                                     )
                                                     (i32.const 255)
                                                    )
                                                    (i32.const 9)
                                                   )
                                                  )
                                                  (set_local $3
                                                   (i64.add
                                                    (i64.add
                                                     (i64.mul
                                                      (get_local $3)
                                                      (i64.const 10)
                                                     )
                                                     (i64.shr_s
                                                      (i64.shl
                                                       (i64.extend_u/i32
                                                        (get_local $2)
                                                       )
                                                       (i64.const 56)
                                                      )
                                                      (i64.const 56)
                                                     )
                                                    )
                                                    (i64.const -48)
                                                   )
                                                  )
                                                 )
                                                 (set_local $1
                                                  (i32.add
                                                   (get_local $1)
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (br_if $label$268
                                                  (tee_local $4
                                                   (i32.add
                                                    (get_local $4)
                                                    (i32.const -1)
                                                   )
                                                  )
                                                 )
                                                 (br $label$263)
                                                )
                                               )
                                               (set_local $3
                                                (i64.const 0)
                                               )
                                              )
                                              (i64.store offset=8
                                               (get_local $0)
                                               (i64.const 1397703940)
                                              )
                                              (i64.store
                                               (get_local $0)
                                               (get_local $3)
                                              )
                                              (call $eosio_assert
                                               (i64.lt_u
                                                (i64.add
                                                 (get_local $3)
                                                 (i64.const 4611686018427387903)
                                                )
                                                (i64.const 9223372036854775807)
                                               )
                                               (i32.const 368)
                                              )
                                              (set_local $3
                                               (i64.shr_u
                                                (i64.load offset=8
                                                 (get_local $0)
                                                )
                                                (i64.const 8)
                                               )
                                              )
                                              (set_local $1
                                               (i32.const 0)
                                              )
                                              (block $label$270
                                               (block $label$271
                                                (loop $label$272
                                                 (br_if $label$271
                                                  (i32.gt_u
                                                   (i32.add
                                                    (i32.shl
                                                     (i32.wrap/i64
                                                      (get_local $3)
                                                     )
                                                     (i32.const 24)
                                                    )
                                                    (i32.const -1073741825)
                                                   )
                                                   (i32.const 452984830)
                                                  )
                                                 )
                                                 (block $label$273
                                                  (br_if $label$273
                                                   (i64.ne
                                                    (i64.and
                                                     (tee_local $3
                                                      (i64.shr_u
                                                       (get_local $3)
                                                       (i64.const 8)
                                                      )
                                                     )
                                                     (i64.const 255)
                                                    )
                                                    (i64.const 0)
                                                   )
                                                  )
                                                  (loop $label$274
                                                   (br_if $label$271
                                                    (i64.ne
                                                     (i64.and
                                                      (tee_local $3
                                                       (i64.shr_u
                                                        (get_local $3)
                                                        (i64.const 8)
                                                       )
                                                      )
                                                      (i64.const 255)
                                                     )
                                                     (i64.const 0)
                                                    )
                                                   )
                                                   (br_if $label$274
                                                    (i32.lt_s
                                                     (tee_local $1
                                                      (i32.add
                                                       (get_local $1)
                                                       (i32.const 1)
                                                      )
                                                     )
                                                     (i32.const 7)
                                                    )
                                                   )
                                                  )
                                                 )
                                                 (set_local $4
                                                  (i32.const 1)
                                                 )
                                                 (br_if $label$272
                                                  (i32.lt_s
                                                   (tee_local $1
                                                    (i32.add
                                                     (get_local $1)
                                                     (i32.const 1)
                                                    )
                                                   )
                                                   (i32.const 7)
                                                  )
                                                 )
                                                 (br $label$270)
                                                )
                                               )
                                               (set_local $4
                                                (i32.const 0)
                                               )
                                              )
                                              (call $eosio_assert
                                               (get_local $4)
                                               (i32.const 48)
                                              )
                                              (br_if $label$0
                                               (i32.eqz
                                                (i32.and
                                                 (i32.load8_u offset=80
                                                  (get_local $5)
                                                 )
                                                 (i32.const 1)
                                                )
                                               )
                                              )
                                              (call $_ZdlPv
                                               (i32.load
                                                (i32.add
                                                 (get_local $5)
                                                 (i32.const 88)
                                                )
                                               )
                                              )
                                              (br $label$0)
                                             )
                                             (br_if $label$39
                                              (i64.lt_u
                                               (get_local $3)
                                               (i64.const 42960)
                                              )
                                             )
                                             (i32.store
                                              (i32.add
                                               (get_local $5)
                                               (i32.const 40)
                                              )
                                              (i32.const 0)
                                             )
                                             (i64.store offset=32
                                              (get_local $5)
                                              (i64.const 0)
                                             )
                                             (br_if $label$3
                                              (i32.ge_u
                                               (tee_local $1
                                                (call $strlen
                                                 (i32.const 336)
                                                )
                                               )
                                               (i32.const -16)
                                              )
                                             )
                                             (br_if $label$34
                                              (i32.ge_u
                                               (get_local $1)
                                               (i32.const 11)
                                              )
                                             )
                                             (i32.store8 offset=32
                                              (get_local $5)
                                              (i32.shl
                                               (get_local $1)
                                               (i32.const 1)
                                              )
                                             )
                                             (set_local $4
                                              (i32.or
                                               (i32.add
                                                (get_local $5)
                                                (i32.const 32)
                                               )
                                               (i32.const 1)
                                              )
                                             )
                                             (set_local $2
                                              (i32.add
                                               (get_local $5)
                                               (i32.const 32)
                                              )
                                             )
                                             (br_if $label$33
                                              (get_local $1)
                                             )
                                             (br $label$32)
                                            )
                                            (set_local $4
                                             (call $_Znwj
                                              (tee_local $2
                                               (i32.and
                                                (i32.add
                                                 (get_local $1)
                                                 (i32.const 16)
                                                )
                                                (i32.const -16)
                                               )
                                              )
                                             )
                                            )
                                            (i32.store offset=64
                                             (get_local $5)
                                             (i32.or
                                              (get_local $2)
                                              (i32.const 1)
                                             )
                                            )
                                            (i32.store offset=72
                                             (get_local $5)
                                             (get_local $4)
                                            )
                                            (i32.store offset=68
                                             (get_local $5)
                                             (get_local $1)
                                            )
                                            (set_local $2
                                             (i32.add
                                              (get_local $5)
                                              (i32.const 64)
                                             )
                                            )
                                           )
                                           (drop
                                            (call $memcpy
                                             (get_local $4)
                                             (i32.const 304)
                                             (get_local $1)
                                            )
                                           )
                                          )
                                          (i32.store8
                                           (i32.add
                                            (get_local $4)
                                            (get_local $1)
                                           )
                                           (i32.const 0)
                                          )
                                          (block $label$275
                                           (block $label$276
                                            (block $label$277
                                             (br_if $label$277
                                              (i32.and
                                               (tee_local $1
                                                (i32.load8_u offset=64
                                                 (get_local $5)
                                                )
                                               )
                                               (i32.const 1)
                                              )
                                             )
                                             (br_if $label$276
                                              (i32.eqz
                                               (tee_local $4
                                                (i32.shr_u
                                                 (get_local $1)
                                                 (i32.const 1)
                                                )
                                               )
                                              )
                                             )
                                             (set_local $1
                                              (i32.add
                                               (get_local $2)
                                               (i32.const 1)
                                              )
                                             )
                                             (set_local $3
                                              (i64.const 0)
                                             )
                                             (loop $label$278
                                              (block $label$279
                                               (br_if $label$279
                                                (i32.gt_u
                                                 (i32.and
                                                  (i32.add
                                                   (tee_local $2
                                                    (i32.load8_u
                                                     (get_local $1)
                                                    )
                                                   )
                                                   (i32.const -48)
                                                  )
                                                  (i32.const 255)
                                                 )
                                                 (i32.const 9)
                                                )
                                               )
                                               (set_local $3
                                                (i64.add
                                                 (i64.add
                                                  (i64.mul
                                                   (get_local $3)
                                                   (i64.const 10)
                                                  )
                                                  (i64.shr_s
                                                   (i64.shl
                                                    (i64.extend_u/i32
                                                     (get_local $2)
                                                    )
                                                    (i64.const 56)
                                                   )
                                                   (i64.const 56)
                                                  )
                                                 )
                                                 (i64.const -48)
                                                )
                                               )
                                              )
                                              (set_local $1
                                               (i32.add
                                                (get_local $1)
                                                (i32.const 1)
                                               )
                                              )
                                              (br_if $label$278
                                               (tee_local $4
                                                (i32.add
                                                 (get_local $4)
                                                 (i32.const -1)
                                                )
                                               )
                                              )
                                              (br $label$275)
                                             )
                                            )
                                            (br_if $label$276
                                             (i32.eqz
                                              (tee_local $4
                                               (i32.load offset=68
                                                (get_local $5)
                                               )
                                              )
                                             )
                                            )
                                            (set_local $1
                                             (i32.load
                                              (i32.add
                                               (get_local $5)
                                               (i32.const 72)
                                              )
                                             )
                                            )
                                            (set_local $3
                                             (i64.const 0)
                                            )
                                            (loop $label$280
                                             (block $label$281
                                              (br_if $label$281
                                               (i32.gt_u
                                                (i32.and
                                                 (i32.add
                                                  (tee_local $2
                                                   (i32.load8_u
                                                    (get_local $1)
                                                   )
                                                  )
                                                  (i32.const -48)
                                                 )
                                                 (i32.const 255)
                                                )
                                                (i32.const 9)
                                               )
                                              )
                                              (set_local $3
                                               (i64.add
                                                (i64.add
                                                 (i64.mul
                                                  (get_local $3)
                                                  (i64.const 10)
                                                 )
                                                 (i64.shr_s
                                                  (i64.shl
                                                   (i64.extend_u/i32
                                                    (get_local $2)
                                                   )
                                                   (i64.const 56)
                                                  )
                                                  (i64.const 56)
                                                 )
                                                )
                                                (i64.const -48)
                                               )
                                              )
                                             )
                                             (set_local $1
                                              (i32.add
                                               (get_local $1)
                                               (i32.const 1)
                                              )
                                             )
                                             (br_if $label$280
                                              (tee_local $4
                                               (i32.add
                                                (get_local $4)
                                                (i32.const -1)
                                               )
                                              )
                                             )
                                             (br $label$275)
                                            )
                                           )
                                           (set_local $3
                                            (i64.const 0)
                                           )
                                          )
                                          (i64.store offset=8
                                           (get_local $0)
                                           (i64.const 1397703940)
                                          )
                                          (i64.store
                                           (get_local $0)
                                           (get_local $3)
                                          )
                                          (call $eosio_assert
                                           (i64.lt_u
                                            (i64.add
                                             (get_local $3)
                                             (i64.const 4611686018427387903)
                                            )
                                            (i64.const 9223372036854775807)
                                           )
                                           (i32.const 368)
                                          )
                                          (set_local $3
                                           (i64.shr_u
                                            (i64.load offset=8
                                             (get_local $0)
                                            )
                                            (i64.const 8)
                                           )
                                          )
                                          (set_local $1
                                           (i32.const 0)
                                          )
                                          (block $label$282
                                           (block $label$283
                                            (loop $label$284
                                             (br_if $label$283
                                              (i32.gt_u
                                               (i32.add
                                                (i32.shl
                                                 (i32.wrap/i64
                                                  (get_local $3)
                                                 )
                                                 (i32.const 24)
                                                )
                                                (i32.const -1073741825)
                                               )
                                               (i32.const 452984830)
                                              )
                                             )
                                             (block $label$285
                                              (br_if $label$285
                                               (i64.ne
                                                (i64.and
                                                 (tee_local $3
                                                  (i64.shr_u
                                                   (get_local $3)
                                                   (i64.const 8)
                                                  )
                                                 )
                                                 (i64.const 255)
                                                )
                                                (i64.const 0)
                                               )
                                              )
                                              (loop $label$286
                                               (br_if $label$283
                                                (i64.ne
                                                 (i64.and
                                                  (tee_local $3
                                                   (i64.shr_u
                                                    (get_local $3)
                                                    (i64.const 8)
                                                   )
                                                  )
                                                  (i64.const 255)
                                                 )
                                                 (i64.const 0)
                                                )
                                               )
                                               (br_if $label$286
                                                (i32.lt_s
                                                 (tee_local $1
                                                  (i32.add
                                                   (get_local $1)
                                                   (i32.const 1)
                                                  )
                                                 )
                                                 (i32.const 7)
                                                )
                                               )
                                              )
                                             )
                                             (set_local $4
                                              (i32.const 1)
                                             )
                                             (br_if $label$284
                                              (i32.lt_s
                                               (tee_local $1
                                                (i32.add
                                                 (get_local $1)
                                                 (i32.const 1)
                                                )
                                               )
                                               (i32.const 7)
                                              )
                                             )
                                             (br $label$282)
                                            )
                                           )
                                           (set_local $4
                                            (i32.const 0)
                                           )
                                          )
                                          (call $eosio_assert
                                           (get_local $4)
                                           (i32.const 48)
                                          )
                                          (br_if $label$0
                                           (i32.eqz
                                            (i32.and
                                             (i32.load8_u offset=64
                                              (get_local $5)
                                             )
                                             (i32.const 1)
                                            )
                                           )
                                          )
                                          (call $_ZdlPv
                                           (i32.load
                                            (i32.add
                                             (get_local $5)
                                             (i32.const 72)
                                            )
                                           )
                                          )
                                          (br $label$0)
                                         )
                                         (br_if $label$35
                                          (i64.lt_u
                                           (get_local $3)
                                           (i64.const 21480)
                                          )
                                         )
                                         (i32.store
                                          (i32.add
                                           (get_local $5)
                                           (i32.const 24)
                                          )
                                          (i32.const 0)
                                         )
                                         (i64.store offset=16
                                          (get_local $5)
                                          (i64.const 0)
                                         )
                                         (br_if $label$2
                                          (i32.ge_u
                                           (tee_local $1
                                            (call $strlen
                                             (i32.const 352)
                                            )
                                           )
                                           (i32.const -16)
                                          )
                                         )
                                         (br_if $label$31
                                          (i32.ge_u
                                           (get_local $1)
                                           (i32.const 11)
                                          )
                                         )
                                         (i32.store8 offset=16
                                          (get_local $5)
                                          (i32.shl
                                           (get_local $1)
                                           (i32.const 1)
                                          )
                                         )
                                         (set_local $4
                                          (i32.or
                                           (i32.add
                                            (get_local $5)
                                            (i32.const 16)
                                           )
                                           (i32.const 1)
                                          )
                                         )
                                         (set_local $2
                                          (i32.add
                                           (get_local $5)
                                           (i32.const 16)
                                          )
                                         )
                                         (br_if $label$30
                                          (get_local $1)
                                         )
                                         (br $label$29)
                                        )
                                        (set_local $4
                                         (call $_Znwj
                                          (tee_local $2
                                           (i32.and
                                            (i32.add
                                             (get_local $1)
                                             (i32.const 16)
                                            )
                                            (i32.const -16)
                                           )
                                          )
                                         )
                                        )
                                        (i32.store offset=48
                                         (get_local $5)
                                         (i32.or
                                          (get_local $2)
                                          (i32.const 1)
                                         )
                                        )
                                        (i32.store offset=56
                                         (get_local $5)
                                         (get_local $4)
                                        )
                                        (i32.store offset=52
                                         (get_local $5)
                                         (get_local $1)
                                        )
                                        (set_local $2
                                         (i32.add
                                          (get_local $5)
                                          (i32.const 48)
                                         )
                                        )
                                       )
                                       (drop
                                        (call $memcpy
                                         (get_local $4)
                                         (i32.const 320)
                                         (get_local $1)
                                        )
                                       )
                                      )
                                      (i32.store8
                                       (i32.add
                                        (get_local $4)
                                        (get_local $1)
                                       )
                                       (i32.const 0)
                                      )
                                      (block $label$287
                                       (block $label$288
                                        (block $label$289
                                         (br_if $label$289
                                          (i32.and
                                           (tee_local $1
                                            (i32.load8_u offset=48
                                             (get_local $5)
                                            )
                                           )
                                           (i32.const 1)
                                          )
                                         )
                                         (br_if $label$288
                                          (i32.eqz
                                           (tee_local $4
                                            (i32.shr_u
                                             (get_local $1)
                                             (i32.const 1)
                                            )
                                           )
                                          )
                                         )
                                         (set_local $1
                                          (i32.add
                                           (get_local $2)
                                           (i32.const 1)
                                          )
                                         )
                                         (set_local $3
                                          (i64.const 0)
                                         )
                                         (loop $label$290
                                          (block $label$291
                                           (br_if $label$291
                                            (i32.gt_u
                                             (i32.and
                                              (i32.add
                                               (tee_local $2
                                                (i32.load8_u
                                                 (get_local $1)
                                                )
                                               )
                                               (i32.const -48)
                                              )
                                              (i32.const 255)
                                             )
                                             (i32.const 9)
                                            )
                                           )
                                           (set_local $3
                                            (i64.add
                                             (i64.add
                                              (i64.mul
                                               (get_local $3)
                                               (i64.const 10)
                                              )
                                              (i64.shr_s
                                               (i64.shl
                                                (i64.extend_u/i32
                                                 (get_local $2)
                                                )
                                                (i64.const 56)
                                               )
                                               (i64.const 56)
                                              )
                                             )
                                             (i64.const -48)
                                            )
                                           )
                                          )
                                          (set_local $1
                                           (i32.add
                                            (get_local $1)
                                            (i32.const 1)
                                           )
                                          )
                                          (br_if $label$290
                                           (tee_local $4
                                            (i32.add
                                             (get_local $4)
                                             (i32.const -1)
                                            )
                                           )
                                          )
                                          (br $label$287)
                                         )
                                        )
                                        (br_if $label$288
                                         (i32.eqz
                                          (tee_local $4
                                           (i32.load offset=52
                                            (get_local $5)
                                           )
                                          )
                                         )
                                        )
                                        (set_local $1
                                         (i32.load
                                          (i32.add
                                           (get_local $5)
                                           (i32.const 56)
                                          )
                                         )
                                        )
                                        (set_local $3
                                         (i64.const 0)
                                        )
                                        (loop $label$292
                                         (block $label$293
                                          (br_if $label$293
                                           (i32.gt_u
                                            (i32.and
                                             (i32.add
                                              (tee_local $2
                                               (i32.load8_u
                                                (get_local $1)
                                               )
                                              )
                                              (i32.const -48)
                                             )
                                             (i32.const 255)
                                            )
                                            (i32.const 9)
                                           )
                                          )
                                          (set_local $3
                                           (i64.add
                                            (i64.add
                                             (i64.mul
                                              (get_local $3)
                                              (i64.const 10)
                                             )
                                             (i64.shr_s
                                              (i64.shl
                                               (i64.extend_u/i32
                                                (get_local $2)
                                               )
                                               (i64.const 56)
                                              )
                                              (i64.const 56)
                                             )
                                            )
                                            (i64.const -48)
                                           )
                                          )
                                         )
                                         (set_local $1
                                          (i32.add
                                           (get_local $1)
                                           (i32.const 1)
                                          )
                                         )
                                         (br_if $label$292
                                          (tee_local $4
                                           (i32.add
                                            (get_local $4)
                                            (i32.const -1)
                                           )
                                          )
                                         )
                                         (br $label$287)
                                        )
                                       )
                                       (set_local $3
                                        (i64.const 0)
                                       )
                                      )
                                      (i64.store offset=8
                                       (get_local $0)
                                       (i64.const 1397703940)
                                      )
                                      (i64.store
                                       (get_local $0)
                                       (get_local $3)
                                      )
                                      (call $eosio_assert
                                       (i64.lt_u
                                        (i64.add
                                         (get_local $3)
                                         (i64.const 4611686018427387903)
                                        )
                                        (i64.const 9223372036854775807)
                                       )
                                       (i32.const 368)
                                      )
                                      (set_local $3
                                       (i64.shr_u
                                        (i64.load offset=8
                                         (get_local $0)
                                        )
                                        (i64.const 8)
                                       )
                                      )
                                      (set_local $1
                                       (i32.const 0)
                                      )
                                      (block $label$294
                                       (block $label$295
                                        (loop $label$296
                                         (br_if $label$295
                                          (i32.gt_u
                                           (i32.add
                                            (i32.shl
                                             (i32.wrap/i64
                                              (get_local $3)
                                             )
                                             (i32.const 24)
                                            )
                                            (i32.const -1073741825)
                                           )
                                           (i32.const 452984830)
                                          )
                                         )
                                         (block $label$297
                                          (br_if $label$297
                                           (i64.ne
                                            (i64.and
                                             (tee_local $3
                                              (i64.shr_u
                                               (get_local $3)
                                               (i64.const 8)
                                              )
                                             )
                                             (i64.const 255)
                                            )
                                            (i64.const 0)
                                           )
                                          )
                                          (loop $label$298
                                           (br_if $label$295
                                            (i64.ne
                                             (i64.and
                                              (tee_local $3
                                               (i64.shr_u
                                                (get_local $3)
                                                (i64.const 8)
                                               )
                                              )
                                              (i64.const 255)
                                             )
                                             (i64.const 0)
                                            )
                                           )
                                           (br_if $label$298
                                            (i32.lt_s
                                             (tee_local $1
                                              (i32.add
                                               (get_local $1)
                                               (i32.const 1)
                                              )
                                             )
                                             (i32.const 7)
                                            )
                                           )
                                          )
                                         )
                                         (set_local $4
                                          (i32.const 1)
                                         )
                                         (br_if $label$296
                                          (i32.lt_s
                                           (tee_local $1
                                            (i32.add
                                             (get_local $1)
                                             (i32.const 1)
                                            )
                                           )
                                           (i32.const 7)
                                          )
                                         )
                                         (br $label$294)
                                        )
                                       )
                                       (set_local $4
                                        (i32.const 0)
                                       )
                                      )
                                      (call $eosio_assert
                                       (get_local $4)
                                       (i32.const 48)
                                      )
                                      (br_if $label$0
                                       (i32.eqz
                                        (i32.and
                                         (i32.load8_u offset=48
                                          (get_local $5)
                                         )
                                         (i32.const 1)
                                        )
                                       )
                                      )
                                      (call $_ZdlPv
                                       (i32.load
                                        (i32.add
                                         (get_local $5)
                                         (i32.const 56)
                                        )
                                       )
                                      )
                                      (br $label$0)
                                     )
                                     (i32.store
                                      (i32.add
                                       (get_local $5)
                                       (i32.const 8)
                                      )
                                      (i32.const 0)
                                     )
                                     (i64.store
                                      (get_local $5)
                                      (i64.const 0)
                                     )
                                     (br_if $label$1
                                      (i32.ge_u
                                       (tee_local $1
                                        (call $strlen
                                         (i32.const 352)
                                        )
                                       )
                                       (i32.const -16)
                                      )
                                     )
                                     (br_if $label$28
                                      (i32.ge_u
                                       (get_local $1)
                                       (i32.const 11)
                                      )
                                     )
                                     (i32.store8
                                      (get_local $5)
                                      (i32.shl
                                       (get_local $1)
                                       (i32.const 1)
                                      )
                                     )
                                     (set_local $4
                                      (i32.or
                                       (get_local $5)
                                       (i32.const 1)
                                      )
                                     )
                                     (set_local $2
                                      (get_local $5)
                                     )
                                     (br_if $label$27
                                      (get_local $1)
                                     )
                                     (br $label$26)
                                    )
                                    (set_local $4
                                     (call $_Znwj
                                      (tee_local $2
                                       (i32.and
                                        (i32.add
                                         (get_local $1)
                                         (i32.const 16)
                                        )
                                        (i32.const -16)
                                       )
                                      )
                                     )
                                    )
                                    (i32.store offset=32
                                     (get_local $5)
                                     (i32.or
                                      (get_local $2)
                                      (i32.const 1)
                                     )
                                    )
                                    (i32.store offset=40
                                     (get_local $5)
                                     (get_local $4)
                                    )
                                    (i32.store offset=36
                                     (get_local $5)
                                     (get_local $1)
                                    )
                                    (set_local $2
                                     (i32.add
                                      (get_local $5)
                                      (i32.const 32)
                                     )
                                    )
                                   )
                                   (drop
                                    (call $memcpy
                                     (get_local $4)
                                     (i32.const 336)
                                     (get_local $1)
                                    )
                                   )
                                  )
                                  (i32.store8
                                   (i32.add
                                    (get_local $4)
                                    (get_local $1)
                                   )
                                   (i32.const 0)
                                  )
                                  (block $label$299
                                   (block $label$300
                                    (block $label$301
                                     (br_if $label$301
                                      (i32.and
                                       (tee_local $1
                                        (i32.load8_u offset=32
                                         (get_local $5)
                                        )
                                       )
                                       (i32.const 1)
                                      )
                                     )
                                     (br_if $label$300
                                      (i32.eqz
                                       (tee_local $4
                                        (i32.shr_u
                                         (get_local $1)
                                         (i32.const 1)
                                        )
                                       )
                                      )
                                     )
                                     (set_local $1
                                      (i32.add
                                       (get_local $2)
                                       (i32.const 1)
                                      )
                                     )
                                     (set_local $3
                                      (i64.const 0)
                                     )
                                     (loop $label$302
                                      (block $label$303
                                       (br_if $label$303
                                        (i32.gt_u
                                         (i32.and
                                          (i32.add
                                           (tee_local $2
                                            (i32.load8_u
                                             (get_local $1)
                                            )
                                           )
                                           (i32.const -48)
                                          )
                                          (i32.const 255)
                                         )
                                         (i32.const 9)
                                        )
                                       )
                                       (set_local $3
                                        (i64.add
                                         (i64.add
                                          (i64.mul
                                           (get_local $3)
                                           (i64.const 10)
                                          )
                                          (i64.shr_s
                                           (i64.shl
                                            (i64.extend_u/i32
                                             (get_local $2)
                                            )
                                            (i64.const 56)
                                           )
                                           (i64.const 56)
                                          )
                                         )
                                         (i64.const -48)
                                        )
                                       )
                                      )
                                      (set_local $1
                                       (i32.add
                                        (get_local $1)
                                        (i32.const 1)
                                       )
                                      )
                                      (br_if $label$302
                                       (tee_local $4
                                        (i32.add
                                         (get_local $4)
                                         (i32.const -1)
                                        )
                                       )
                                      )
                                      (br $label$299)
                                     )
                                    )
                                    (br_if $label$300
                                     (i32.eqz
                                      (tee_local $4
                                       (i32.load offset=36
                                        (get_local $5)
                                       )
                                      )
                                     )
                                    )
                                    (set_local $1
                                     (i32.load
                                      (i32.add
                                       (get_local $5)
                                       (i32.const 40)
                                      )
                                     )
                                    )
                                    (set_local $3
                                     (i64.const 0)
                                    )
                                    (loop $label$304
                                     (block $label$305
                                      (br_if $label$305
                                       (i32.gt_u
                                        (i32.and
                                         (i32.add
                                          (tee_local $2
                                           (i32.load8_u
                                            (get_local $1)
                                           )
                                          )
                                          (i32.const -48)
                                         )
                                         (i32.const 255)
                                        )
                                        (i32.const 9)
                                       )
                                      )
                                      (set_local $3
                                       (i64.add
                                        (i64.add
                                         (i64.mul
                                          (get_local $3)
                                          (i64.const 10)
                                         )
                                         (i64.shr_s
                                          (i64.shl
                                           (i64.extend_u/i32
                                            (get_local $2)
                                           )
                                           (i64.const 56)
                                          )
                                          (i64.const 56)
                                         )
                                        )
                                        (i64.const -48)
                                       )
                                      )
                                     )
                                     (set_local $1
                                      (i32.add
                                       (get_local $1)
                                       (i32.const 1)
                                      )
                                     )
                                     (br_if $label$304
                                      (tee_local $4
                                       (i32.add
                                        (get_local $4)
                                        (i32.const -1)
                                       )
                                      )
                                     )
                                     (br $label$299)
                                    )
                                   )
                                   (set_local $3
                                    (i64.const 0)
                                   )
                                  )
                                  (i64.store offset=8
                                   (get_local $0)
                                   (i64.const 1397703940)
                                  )
                                  (i64.store
                                   (get_local $0)
                                   (get_local $3)
                                  )
                                  (call $eosio_assert
                                   (i64.lt_u
                                    (i64.add
                                     (get_local $3)
                                     (i64.const 4611686018427387903)
                                    )
                                    (i64.const 9223372036854775807)
                                   )
                                   (i32.const 368)
                                  )
                                  (set_local $3
                                   (i64.shr_u
                                    (i64.load offset=8
                                     (get_local $0)
                                    )
                                    (i64.const 8)
                                   )
                                  )
                                  (set_local $1
                                   (i32.const 0)
                                  )
                                  (block $label$306
                                   (block $label$307
                                    (loop $label$308
                                     (br_if $label$307
                                      (i32.gt_u
                                       (i32.add
                                        (i32.shl
                                         (i32.wrap/i64
                                          (get_local $3)
                                         )
                                         (i32.const 24)
                                        )
                                        (i32.const -1073741825)
                                       )
                                       (i32.const 452984830)
                                      )
                                     )
                                     (block $label$309
                                      (br_if $label$309
                                       (i64.ne
                                        (i64.and
                                         (tee_local $3
                                          (i64.shr_u
                                           (get_local $3)
                                           (i64.const 8)
                                          )
                                         )
                                         (i64.const 255)
                                        )
                                        (i64.const 0)
                                       )
                                      )
                                      (loop $label$310
                                       (br_if $label$307
                                        (i64.ne
                                         (i64.and
                                          (tee_local $3
                                           (i64.shr_u
                                            (get_local $3)
                                            (i64.const 8)
                                           )
                                          )
                                          (i64.const 255)
                                         )
                                         (i64.const 0)
                                        )
                                       )
                                       (br_if $label$310
                                        (i32.lt_s
                                         (tee_local $1
                                          (i32.add
                                           (get_local $1)
                                           (i32.const 1)
                                          )
                                         )
                                         (i32.const 7)
                                        )
                                       )
                                      )
                                     )
                                     (set_local $4
                                      (i32.const 1)
                                     )
                                     (br_if $label$308
                                      (i32.lt_s
                                       (tee_local $1
                                        (i32.add
                                         (get_local $1)
                                         (i32.const 1)
                                        )
                                       )
                                       (i32.const 7)
                                      )
                                     )
                                     (br $label$306)
                                    )
                                   )
                                   (set_local $4
                                    (i32.const 0)
                                   )
                                  )
                                  (call $eosio_assert
                                   (get_local $4)
                                   (i32.const 48)
                                  )
                                  (br_if $label$0
                                   (i32.eqz
                                    (i32.and
                                     (i32.load8_u offset=32
                                      (get_local $5)
                                     )
                                     (i32.const 1)
                                    )
                                   )
                                  )
                                  (call $_ZdlPv
                                   (i32.load
                                    (i32.add
                                     (get_local $5)
                                     (i32.const 40)
                                    )
                                   )
                                  )
                                  (br $label$0)
                                 )
                                 (set_local $4
                                  (call $_Znwj
                                   (tee_local $2
                                    (i32.and
                                     (i32.add
                                      (get_local $1)
                                      (i32.const 16)
                                     )
                                     (i32.const -16)
                                    )
                                   )
                                  )
                                 )
                                 (i32.store offset=16
                                  (get_local $5)
                                  (i32.or
                                   (get_local $2)
                                   (i32.const 1)
                                  )
                                 )
                                 (i32.store offset=24
                                  (get_local $5)
                                  (get_local $4)
                                 )
                                 (i32.store offset=20
                                  (get_local $5)
                                  (get_local $1)
                                 )
                                 (set_local $2
                                  (i32.add
                                   (get_local $5)
                                   (i32.const 16)
                                  )
                                 )
                                )
                                (drop
                                 (call $memcpy
                                  (get_local $4)
                                  (i32.const 352)
                                  (get_local $1)
                                 )
                                )
                               )
                               (i32.store8
                                (i32.add
                                 (get_local $4)
                                 (get_local $1)
                                )
                                (i32.const 0)
                               )
                               (br_if $label$25
                                (i32.and
                                 (tee_local $1
                                  (i32.load8_u offset=16
                                   (get_local $5)
                                  )
                                 )
                                 (i32.const 1)
                                )
                               )
                               (br_if $label$23
                                (i32.eqz
                                 (tee_local $4
                                  (i32.shr_u
                                   (get_local $1)
                                   (i32.const 1)
                                  )
                                 )
                                )
                               )
                               (set_local $1
                                (i32.add
                                 (get_local $2)
                                 (i32.const 1)
                                )
                               )
                               (set_local $3
                                (i64.const 0)
                               )
                               (loop $label$311
                                (block $label$312
                                 (br_if $label$312
                                  (i32.gt_u
                                   (i32.and
                                    (i32.add
                                     (tee_local $2
                                      (i32.load8_u
                                       (get_local $1)
                                      )
                                     )
                                     (i32.const -48)
                                    )
                                    (i32.const 255)
                                   )
                                   (i32.const 9)
                                  )
                                 )
                                 (set_local $3
                                  (i64.add
                                   (i64.add
                                    (i64.mul
                                     (get_local $3)
                                     (i64.const 10)
                                    )
                                    (i64.shr_s
                                     (i64.shl
                                      (i64.extend_u/i32
                                       (get_local $2)
                                      )
                                      (i64.const 56)
                                     )
                                     (i64.const 56)
                                    )
                                   )
                                   (i64.const -48)
                                  )
                                 )
                                )
                                (set_local $1
                                 (i32.add
                                  (get_local $1)
                                  (i32.const 1)
                                 )
                                )
                                (br_if $label$311
                                 (tee_local $4
                                  (i32.add
                                   (get_local $4)
                                   (i32.const -1)
                                  )
                                 )
                                )
                                (br $label$22)
                               )
                              )
                              (set_local $4
                               (call $_Znwj
                                (tee_local $2
                                 (i32.and
                                  (i32.add
                                   (get_local $1)
                                   (i32.const 16)
                                  )
                                  (i32.const -16)
                                 )
                                )
                               )
                              )
                              (i32.store
                               (get_local $5)
                               (i32.or
                                (get_local $2)
                                (i32.const 1)
                               )
                              )
                              (i32.store offset=8
                               (get_local $5)
                               (get_local $4)
                              )
                              (i32.store offset=4
                               (get_local $5)
                               (get_local $1)
                              )
                              (set_local $2
                               (get_local $5)
                              )
                             )
                             (drop
                              (call $memcpy
                               (get_local $4)
                               (i32.const 352)
                               (get_local $1)
                              )
                             )
                            )
                            (i32.store8
                             (i32.add
                              (get_local $4)
                              (get_local $1)
                             )
                             (i32.const 0)
                            )
                            (br_if $label$24
                             (i32.and
                              (tee_local $1
                               (i32.load8_u
                                (get_local $5)
                               )
                              )
                              (i32.const 1)
                             )
                            )
                            (br_if $label$21
                             (i32.eqz
                              (tee_local $4
                               (i32.shr_u
                                (get_local $1)
                                (i32.const 1)
                               )
                              )
                             )
                            )
                            (set_local $1
                             (i32.add
                              (get_local $2)
                              (i32.const 1)
                             )
                            )
                            (set_local $3
                             (i64.const 0)
                            )
                            (loop $label$313
                             (block $label$314
                              (br_if $label$314
                               (i32.gt_u
                                (i32.and
                                 (i32.add
                                  (tee_local $2
                                   (i32.load8_u
                                    (get_local $1)
                                   )
                                  )
                                  (i32.const -48)
                                 )
                                 (i32.const 255)
                                )
                                (i32.const 9)
                               )
                              )
                              (set_local $3
                               (i64.add
                                (i64.add
                                 (i64.mul
                                  (get_local $3)
                                  (i64.const 10)
                                 )
                                 (i64.shr_s
                                  (i64.shl
                                   (i64.extend_u/i32
                                    (get_local $2)
                                   )
                                   (i64.const 56)
                                  )
                                  (i64.const 56)
                                 )
                                )
                                (i64.const -48)
                               )
                              )
                             )
                             (set_local $1
                              (i32.add
                               (get_local $1)
                               (i32.const 1)
                              )
                             )
                             (br_if $label$313
                              (tee_local $4
                               (i32.add
                                (get_local $4)
                                (i32.const -1)
                               )
                              )
                             )
                             (br $label$20)
                            )
                           )
                           (br_if $label$23
                            (i32.eqz
                             (tee_local $4
                              (i32.load offset=20
                               (get_local $5)
                              )
                             )
                            )
                           )
                           (set_local $1
                            (i32.load
                             (i32.add
                              (get_local $5)
                              (i32.const 24)
                             )
                            )
                           )
                           (set_local $3
                            (i64.const 0)
                           )
                           (loop $label$315
                            (block $label$316
                             (br_if $label$316
                              (i32.gt_u
                               (i32.and
                                (i32.add
                                 (tee_local $2
                                  (i32.load8_u
                                   (get_local $1)
                                  )
                                 )
                                 (i32.const -48)
                                )
                                (i32.const 255)
                               )
                               (i32.const 9)
                              )
                             )
                             (set_local $3
                              (i64.add
                               (i64.add
                                (i64.mul
                                 (get_local $3)
                                 (i64.const 10)
                                )
                                (i64.shr_s
                                 (i64.shl
                                  (i64.extend_u/i32
                                   (get_local $2)
                                  )
                                  (i64.const 56)
                                 )
                                 (i64.const 56)
                                )
                               )
                               (i64.const -48)
                              )
                             )
                            )
                            (set_local $1
                             (i32.add
                              (get_local $1)
                              (i32.const 1)
                             )
                            )
                            (br_if $label$315
                             (tee_local $4
                              (i32.add
                               (get_local $4)
                               (i32.const -1)
                              )
                             )
                            )
                            (br $label$22)
                           )
                          )
                          (br_if $label$21
                           (i32.eqz
                            (tee_local $4
                             (i32.load offset=4
                              (get_local $5)
                             )
                            )
                           )
                          )
                          (set_local $1
                           (i32.load
                            (i32.add
                             (get_local $5)
                             (i32.const 8)
                            )
                           )
                          )
                          (set_local $3
                           (i64.const 0)
                          )
                          (loop $label$317
                           (block $label$318
                            (br_if $label$318
                             (i32.gt_u
                              (i32.and
                               (i32.add
                                (tee_local $2
                                 (i32.load8_u
                                  (get_local $1)
                                 )
                                )
                                (i32.const -48)
                               )
                               (i32.const 255)
                              )
                              (i32.const 9)
                             )
                            )
                            (set_local $3
                             (i64.add
                              (i64.add
                               (i64.mul
                                (get_local $3)
                                (i64.const 10)
                               )
                               (i64.shr_s
                                (i64.shl
                                 (i64.extend_u/i32
                                  (get_local $2)
                                 )
                                 (i64.const 56)
                                )
                                (i64.const 56)
                               )
                              )
                              (i64.const -48)
                             )
                            )
                           )
                           (set_local $1
                            (i32.add
                             (get_local $1)
                             (i32.const 1)
                            )
                           )
                           (br_if $label$317
                            (tee_local $4
                             (i32.add
                              (get_local $4)
                              (i32.const -1)
                             )
                            )
                           )
                           (br $label$20)
                          )
                         )
                         (set_local $3
                          (i64.const 0)
                         )
                        )
                        (i64.store offset=8
                         (get_local $0)
                         (i64.const 1397703940)
                        )
                        (i64.store
                         (get_local $0)
                         (get_local $3)
                        )
                        (call $eosio_assert
                         (i64.lt_u
                          (i64.add
                           (get_local $3)
                           (i64.const 4611686018427387903)
                          )
                          (i64.const 9223372036854775807)
                         )
                         (i32.const 368)
                        )
                        (set_local $3
                         (i64.shr_u
                          (i64.load offset=8
                           (get_local $0)
                          )
                          (i64.const 8)
                         )
                        )
                        (set_local $1
                         (i32.const 0)
                        )
                        (block $label$319
                         (block $label$320
                          (loop $label$321
                           (br_if $label$320
                            (i32.gt_u
                             (i32.add
                              (i32.shl
                               (i32.wrap/i64
                                (get_local $3)
                               )
                               (i32.const 24)
                              )
                              (i32.const -1073741825)
                             )
                             (i32.const 452984830)
                            )
                           )
                           (block $label$322
                            (br_if $label$322
                             (i64.ne
                              (i64.and
                               (tee_local $3
                                (i64.shr_u
                                 (get_local $3)
                                 (i64.const 8)
                                )
                               )
                               (i64.const 255)
                              )
                              (i64.const 0)
                             )
                            )
                            (loop $label$323
                             (br_if $label$320
                              (i64.ne
                               (i64.and
                                (tee_local $3
                                 (i64.shr_u
                                  (get_local $3)
                                  (i64.const 8)
                                 )
                                )
                                (i64.const 255)
                               )
                               (i64.const 0)
                              )
                             )
                             (br_if $label$323
                              (i32.lt_s
                               (tee_local $1
                                (i32.add
                                 (get_local $1)
                                 (i32.const 1)
                                )
                               )
                               (i32.const 7)
                              )
                             )
                            )
                           )
                           (set_local $4
                            (i32.const 1)
                           )
                           (br_if $label$321
                            (i32.lt_s
                             (tee_local $1
                              (i32.add
                               (get_local $1)
                               (i32.const 1)
                              )
                             )
                             (i32.const 7)
                            )
                           )
                           (br $label$319)
                          )
                         )
                         (set_local $4
                          (i32.const 0)
                         )
                        )
                        (call $eosio_assert
                         (get_local $4)
                         (i32.const 48)
                        )
                        (br_if $label$0
                         (i32.eqz
                          (i32.and
                           (i32.load8_u offset=16
                            (get_local $5)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (call $_ZdlPv
                         (i32.load
                          (i32.add
                           (get_local $5)
                           (i32.const 24)
                          )
                         )
                        )
                        (br $label$0)
                       )
                       (set_local $3
                        (i64.const 0)
                       )
                      )
                      (i64.store offset=8
                       (get_local $0)
                       (i64.const 1397703940)
                      )
                      (i64.store
                       (get_local $0)
                       (get_local $3)
                      )
                      (call $eosio_assert
                       (i64.lt_u
                        (i64.add
                         (get_local $3)
                         (i64.const 4611686018427387903)
                        )
                        (i64.const 9223372036854775807)
                       )
                       (i32.const 368)
                      )
                      (set_local $3
                       (i64.shr_u
                        (i64.load offset=8
                         (get_local $0)
                        )
                        (i64.const 8)
                       )
                      )
                      (set_local $1
                       (i32.const 0)
                      )
                      (block $label$324
                       (block $label$325
                        (loop $label$326
                         (br_if $label$325
                          (i32.gt_u
                           (i32.add
                            (i32.shl
                             (i32.wrap/i64
                              (get_local $3)
                             )
                             (i32.const 24)
                            )
                            (i32.const -1073741825)
                           )
                           (i32.const 452984830)
                          )
                         )
                         (block $label$327
                          (br_if $label$327
                           (i64.ne
                            (i64.and
                             (tee_local $3
                              (i64.shr_u
                               (get_local $3)
                               (i64.const 8)
                              )
                             )
                             (i64.const 255)
                            )
                            (i64.const 0)
                           )
                          )
                          (loop $label$328
                           (br_if $label$325
                            (i64.ne
                             (i64.and
                              (tee_local $3
                               (i64.shr_u
                                (get_local $3)
                                (i64.const 8)
                               )
                              )
                              (i64.const 255)
                             )
                             (i64.const 0)
                            )
                           )
                           (br_if $label$328
                            (i32.lt_s
                             (tee_local $1
                              (i32.add
                               (get_local $1)
                               (i32.const 1)
                              )
                             )
                             (i32.const 7)
                            )
                           )
                          )
                         )
                         (set_local $4
                          (i32.const 1)
                         )
                         (br_if $label$326
                          (i32.lt_s
                           (tee_local $1
                            (i32.add
                             (get_local $1)
                             (i32.const 1)
                            )
                           )
                           (i32.const 7)
                          )
                         )
                         (br $label$324)
                        )
                       )
                       (set_local $4
                        (i32.const 0)
                       )
                      )
                      (call $eosio_assert
                       (get_local $4)
                       (i32.const 48)
                      )
                      (br_if $label$0
                       (i32.eqz
                        (i32.and
                         (i32.load8_u
                          (get_local $5)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                      (call $_ZdlPv
                       (i32.load
                        (i32.add
                         (get_local $5)
                         (i32.const 8)
                        )
                       )
                      )
                      (br $label$0)
                     )
                     (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                      (i32.add
                       (get_local $5)
                       (i32.const 288)
                      )
                     )
                     (unreachable)
                    )
                    (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                     (i32.add
                      (get_local $5)
                      (i32.const 272)
                     )
                    )
                    (unreachable)
                   )
                   (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                    (i32.add
                     (get_local $5)
                     (i32.const 256)
                    )
                   )
                   (unreachable)
                  )
                  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                   (i32.add
                    (get_local $5)
                    (i32.const 240)
                   )
                  )
                  (unreachable)
                 )
                 (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                  (i32.add
                   (get_local $5)
                   (i32.const 224)
                  )
                 )
                 (unreachable)
                )
                (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                 (i32.add
                  (get_local $5)
                  (i32.const 208)
                 )
                )
                (unreachable)
               )
               (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
                (i32.add
                 (get_local $5)
                 (i32.const 192)
                )
               )
               (unreachable)
              )
              (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
               (i32.add
                (get_local $5)
                (i32.const 176)
               )
              )
              (unreachable)
             )
             (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
              (i32.add
               (get_local $5)
               (i32.const 160)
              )
             )
             (unreachable)
            )
            (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
             (i32.add
              (get_local $5)
              (i32.const 144)
             )
            )
            (unreachable)
           )
           (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
            (i32.add
             (get_local $5)
             (i32.const 128)
            )
           )
           (unreachable)
          )
          (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
           (i32.add
            (get_local $5)
            (i32.const 112)
           )
          )
          (unreachable)
         )
         (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
          (i32.add
           (get_local $5)
           (i32.const 96)
          )
         )
         (unreachable)
        )
        (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
         (i32.add
          (get_local $5)
          (i32.const 80)
         )
        )
        (unreachable)
       )
       (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
        (i32.add
         (get_local $5)
         (i32.const 64)
        )
       )
       (unreachable)
      )
      (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
       (i32.add
        (get_local $5)
        (i32.const 48)
       )
      )
      (unreachable)
     )
     (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
      (i32.add
       (get_local $5)
       (i32.const 32)
      )
     )
     (unreachable)
    )
    (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
     (i32.add
      (get_local $5)
      (i32.const 16)
     )
    )
    (unreachable)
   )
   (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
    (get_local $5)
   )
   (unreachable)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 304)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 208)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
   (i64.const -1)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (get_local $3)
   (get_local $0)
  )
  (i64.store offset=48
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 56)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
   (i64.const -1)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 72)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 76)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 80)
   )
   (i32.const 0)
  )
  (i64.store offset=88
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 96)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 104)
   )
   (i64.const -1)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 112)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 116)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 120)
   )
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 136)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 144)
   )
   (i64.const -1)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 152)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 156)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 160)
   )
   (i32.const 0)
  )
  (i64.store offset=168
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 176)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 184)
   )
   (i64.const -1)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 192)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 196)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 200)
   )
   (i32.const 0)
  )
  (call $_ZN12cryptojinian5applyEyy
   (get_local $3)
   (get_local $1)
   (get_local $2)
  )
  (call $eosio_exit
   (i32.const 0)
  )
  (unreachable)
 )
 (func $_ZN12cryptojinian5applyEyy (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 432)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $6)
          (i64.const 7)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $8
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.and
       (get_local $8)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.ne
          (get_local $7)
          (get_local $2)
         )
        )
        (call $_ZN5eosio18unpack_action_dataI11st_transferEET_v
         (i32.add
          (get_local $9)
          (i32.const 48)
         )
        )
        (set_local $7
         (i64.load
          (i32.add
           (get_local $9)
           (i32.const 72)
          )
         )
        )
        (set_local $8
         (i64.load offset=64
          (get_local $9)
         )
        )
        (set_local $5
         (i64.load offset=48
          (get_local $9)
         )
        )
        (set_local $6
         (i64.load offset=56
          (get_local $9)
         )
        )
        (drop
         (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
          (i32.add
           (get_local $9)
           (i32.const 32)
          )
          (i32.add
           (get_local $9)
           (i32.const 80)
          )
         )
        )
        (br_if $label$8
         (i64.ne
          (get_local $6)
          (i64.load
           (get_local $0)
          )
         )
        )
        (call $require_auth
         (get_local $5)
        )
        (set_local $3
         (i32.const 0)
        )
        (br_if $label$9
         (i64.gt_u
          (i64.add
           (get_local $8)
           (i64.const 4611686018427387903)
          )
          (i64.const 9223372036854775806)
         )
        )
        (set_local $6
         (i64.shr_u
          (get_local $7)
          (i64.const 8)
         )
        )
        (set_local $4
         (i32.const 0)
        )
        (loop $label$12
         (br_if $label$10
          (i32.gt_u
           (i32.add
            (i32.shl
             (i32.wrap/i64
              (get_local $6)
             )
             (i32.const 24)
            )
            (i32.const -1073741825)
           )
           (i32.const 452984830)
          )
         )
         (block $label$13
          (br_if $label$13
           (i64.ne
            (i64.and
             (tee_local $6
              (i64.shr_u
               (get_local $6)
               (i64.const 8)
              )
             )
             (i64.const 255)
            )
            (i64.const 0)
           )
          )
          (loop $label$14
           (br_if $label$10
            (i64.ne
             (i64.and
              (tee_local $6
               (i64.shr_u
                (get_local $6)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (br_if $label$14
            (i32.lt_s
             (tee_local $4
              (i32.add
               (get_local $4)
               (i32.const 1)
              )
             )
             (i32.const 7)
            )
           )
          )
         )
         (set_local $3
          (i32.const 1)
         )
         (br_if $label$12
          (i32.lt_s
           (tee_local $4
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (i32.const 7)
          )
         )
         (br $label$9)
        )
       )
       (br_if $label$6
        (i64.ne
         (i64.load
          (get_local $0)
         )
         (get_local $1)
        )
       )
       (br_if $label$7
        (i64.eq
         (get_local $2)
         (i64.const -7807295961876660224)
        )
       )
       (br_if $label$6
        (i64.ne
         (get_local $2)
         (i64.const 8421045207927095296)
        )
       )
       (i32.store offset=28
        (get_local $9)
        (i32.const 0)
       )
       (i32.store offset=24
        (get_local $9)
        (i32.const 1)
       )
       (i64.store align=4
        (get_local $9)
        (i64.load offset=24
         (get_local $9)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI12cryptojinianS1_JEEEbPT_MT0_FvDpT1_E
         (get_local $0)
         (get_local $9)
        )
       )
       (br $label$6)
      )
      (set_local $3
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (get_local $3)
      (i32.const 448)
     )
     (call $eosio_assert
      (i64.gt_s
       (get_local $8)
       (i64.const 0)
      )
      (i32.const 480)
     )
    )
    (block $label$15
     (br_if $label$15
      (i32.eqz
       (i32.and
        (i32.load8_u offset=32
         (get_local $9)
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load offset=40
       (get_local $9)
      )
     )
    )
    (br_if $label$6
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $9)
         (i32.const 80)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 88)
      )
     )
    )
    (br $label$6)
   )
   (i32.store offset=20
    (get_local $9)
    (i32.const 0)
   )
   (i32.store offset=16
    (get_local $9)
    (i32.const 2)
   )
   (i64.store offset=8 align=4
    (get_local $9)
    (i64.load offset=16
     (get_local $9)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI12cryptojinianS1_JRKNS_5assetERKhEEEbPT_MT0_FvDpT1_E
     (get_local $0)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 96)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataI11st_transferEET_v (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $1
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $4)
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 368)
  )
  (set_local $3
   (i64.const 5462355)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$2
   (block $label$3
    (loop $label$4
     (br_if $label$3
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$5
      (br_if $label$5
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$6
       (br_if $label$3
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$6
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$4
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$2)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 48)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=4
   (get_local $6)
   (get_local $2)
  )
  (i32.store
   (get_local $6)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $6)
   (i32.add
    (get_local $2)
    (get_local $1)
   )
  )
  (drop
   (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_R11st_transfer
    (get_local $6)
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
 )
 (func $_ZN12cryptojinian4initEv (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 156)
       )
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 152)
       )
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $2
    (i32.sub
     (i32.const 0)
     (get_local $1)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $3
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $3)
       (get_local $2)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 128)
   )
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.eq
        (get_local $7)
        (get_local $1)
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=56
         (tee_local $6
          (i32.load
           (i32.add
            (get_local $7)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $3)
       )
       (i32.const 576)
      )
      (br_if $label$4
       (get_local $6)
      )
      (br $label$3)
     )
     (br_if $label$3
      (i32.lt_s
       (tee_local $6
        (call $db_find_i64
         (i64.load
          (i32.add
           (get_local $0)
           (i32.const 128)
          )
         )
         (i64.load
          (i32.add
           (get_local $0)
           (i32.const 136)
          )
         )
         (i64.const 7235159537265672192)
         (i64.const 0)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=56
        (tee_local $6
         (call $_ZNK5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE31load_object_by_primary_iteratorEl
          (get_local $3)
          (get_local $6)
         )
        )
       )
       (get_local $3)
      )
      (i32.const 576)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 720)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=56
       (get_local $6)
      )
      (get_local $3)
     )
     (i32.const 768)
    )
    (call $eosio_assert
     (i64.eq
      (i64.load
       (i32.add
        (get_local $0)
        (i32.const 128)
       )
      )
      (call $current_receiver)
     )
     (i32.const 816)
    )
    (i64.store offset=48
     (get_local $6)
     (i64.const 429600)
    )
    (set_local $4
     (i64.load
      (get_local $6)
     )
    )
    (i64.store
     (get_local $6)
     (i64.const 0)
    )
    (call $eosio_assert
     (i64.eqz
      (get_local $4)
     )
     (i32.const 880)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 704)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 704)
    )
    (drop
     (call $memcpy
      (i32.or
       (i32.add
        (get_local $8)
        (i32.const 16)
       )
       (i32.const 8)
      )
      (i32.add
       (get_local $6)
       (i32.const 16)
      )
      (i32.const 32)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 704)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $8)
       (i32.const 56)
      )
      (i32.add
       (get_local $6)
       (i32.const 48)
      )
      (i32.const 8)
     )
    )
    (call $db_update_i64
     (i32.load offset=60
      (get_local $6)
     )
     (i64.const 0)
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 48)
    )
    (br_if $label$2
     (i64.lt_u
      (get_local $4)
      (i64.load
       (tee_local $6
        (i32.add
         (get_local $0)
         (i32.const 144)
        )
       )
      )
     )
    )
    (i64.store
     (get_local $6)
     (select
      (i64.const -2)
      (i64.add
       (get_local $4)
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $4)
       (i64.const -3)
      )
     )
    )
    (br $label$2)
   )
   (set_local $5
    (i64.load
     (get_local $0)
    )
   )
   (call $eosio_assert
    (i64.eq
     (i64.load
      (i32.add
       (get_local $0)
       (i32.const 128)
      )
     )
     (call $current_receiver)
    )
    (i32.const 640)
   )
   (i32.store offset=56
    (tee_local $6
     (call $_Znwj
      (i32.const 80)
     )
    )
    (get_local $3)
   )
   (i64.store offset=48
    (get_local $6)
    (i64.const 429600)
   )
   (i64.store
    (get_local $6)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (get_local $6)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.or
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 8)
     )
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (i32.const 32)
    )
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $8)
      (i32.const 56)
     )
     (i32.add
      (get_local $6)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=60
    (get_local $6)
    (tee_local $7
     (call $db_store_i64
      (i64.load
       (i32.add
        (get_local $0)
        (i32.const 136)
       )
      )
      (i64.const 7235159537265672192)
      (get_local $5)
      (tee_local $4
       (i64.load
        (get_local $6)
       )
      )
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 48)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i64.lt_u
      (get_local $4)
      (i64.load
       (tee_local $3
        (i32.add
         (get_local $0)
         (i32.const 144)
        )
       )
      )
     )
    )
    (i64.store
     (get_local $3)
     (select
      (i64.const -2)
      (i64.add
       (get_local $4)
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $4)
       (i64.const -3)
      )
     )
    )
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $4
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (get_local $7)
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $3
        (i32.load
         (tee_local $2
          (i32.add
           (get_local $0)
           (i32.const 156)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 160)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $3)
      (get_local $4)
     )
     (i32.store offset=16
      (get_local $3)
      (get_local $7)
     )
     (i32.store offset=8
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $3)
      (get_local $6)
     )
     (i32.store
      (get_local $2)
      (i32.add
       (get_local $3)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 152)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $6
    (i32.load offset=8
     (get_local $8)
    )
   )
   (i32.store offset=8
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI12cryptojinianS1_JEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (tee_local $5
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.le_u
      (get_local $3)
      (i32.const 512)
     )
    )
    (drop
     (call $read_action_data
      (tee_local $5
       (call $malloc
        (get_local $3)
       )
      )
      (get_local $3)
     )
    )
    (call $free
     (get_local $5)
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $5
     (i32.sub
      (get_local $5)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $5)
     (get_local $3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.load
       (get_local $3)
      )
      (get_local $1)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vi)
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (i32.const 1)
 )
 (func $_ZN12cryptojinian6miningERKN5eosio5assetERKh (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_lowerbound_i64
       (i64.load offset=128
        (get_local $0)
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 136)
        )
       )
       (i64.const 7235159537265672192)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (set_local $4
    (call $_ZNK5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE31load_object_by_primary_iteratorEl
     (i32.add
      (get_local $0)
      (i32.const 128)
     )
     (get_local $3)
    )
   )
  )
  (call $_Z10cost_tableRKy
   (get_local $5)
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
  (call $eosio_assert
   (i64.ne
    (i64.load
     (get_local $1)
    )
    (i64.mul
     (i64.load8_u
      (get_local $2)
     )
     (i64.load
      (get_local $5)
     )
    )
   )
   (i32.const 528)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI12cryptojinianS1_JRKNS_5assetERKhEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $4)
     (get_local $3)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 1398362884)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 368)
  )
  (set_local $5
   (i64.const 5462355)
  )
  (block $label$3
   (block $label$4
    (loop $label$5
     (br_if $label$4
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $5)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$6
      (br_if $label$6
       (i64.ne
        (i64.and
         (tee_local $5
          (i64.shr_u
           (get_local $5)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$7
       (br_if $label$4
        (i64.ne
         (i64.and
          (tee_local $5
           (i64.shr_u
            (get_local $5)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$7
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$5
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$3)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 48)
  )
  (i32.store8 offset=16
   (get_local $8)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $3)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $1
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $3)
    (i32.const 16)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $6
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (i32.const 1)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=24
   (get_local $8)
   (i64.load
    (get_local $8)
   )
  )
  (set_local $1
   (i32.load8_u
    (get_local $6)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=40
   (get_local $8)
   (i64.load offset=24
    (get_local $8)
   )
  )
  (i32.store8 offset=63
   (get_local $8)
   (get_local $1)
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$viii)
   (get_local $1)
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.add
    (get_local $8)
    (i32.const 63)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZNK5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 544)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=56
    (tee_local $6
     (call $_Znwj
      (i32.const 80)
     )
    )
    (get_local $0)
   )
   (i64.store
    (get_local $6)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.add
      (get_local $4)
      (i32.const -8)
     )
     (i32.const 31)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 32)
    )
   )
   (call $eosio_assert
    (i32.ne
     (i32.and
      (get_local $4)
      (i32.const -8)
     )
     (i32.const 40)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 48)
     )
     (i32.add
      (get_local $7)
      (i32.const 40)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=60
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_R11st_transfer (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
   (get_local $0)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 944)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN12cryptojinian7setcoinEyyy (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (i64.store offset=32
   (get_local $11)
   (get_local $1)
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $8
      (i64.load
       (tee_local $9
        (i32.add
         (get_local $0)
         (i32.const 104)
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $8
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $7
       (call $db_lowerbound_i64
        (i64.load
         (get_local $4)
        )
        (i64.load
         (i32.add
          (get_local $0)
          (i32.const 96)
         )
        )
        (i64.const 4980189539499769856)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl
      (get_local $4)
      (get_local $7)
     )
    )
    (i32.store offset=68
     (get_local $11)
     (i32.const 0)
    )
    (i32.store offset=64
     (get_local $11)
     (get_local $4)
    )
    (set_local $8
     (select
      (i64.const -2)
      (i64.add
       (tee_local $1
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE14const_iteratormmEv
           (i32.add
            (get_local $11)
            (i32.const 64)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $1)
       (i64.const -3)
      )
     )
    )
    (set_local $1
     (i64.load offset=32
      (get_local $11)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 104)
    )
    (get_local $8)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $8)
    (i64.const -2)
   )
   (i32.const 960)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.load
    (get_local $9)
   )
  )
  (i32.store offset=16
   (get_local $11)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $11)
   (i64.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (tee_local $10
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 76)
       )
      )
     )
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 72)
       )
      )
     )
    )
   )
   (set_local $9
    (i32.add
     (get_local $10)
     (i32.const -24)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $5)
    )
   )
   (loop $label$3
    (br_if $label$2
     (i64.eq
      (i64.load
       (i32.load
        (get_local $9)
       )
      )
      (get_local $1)
     )
    )
    (set_local $10
     (get_local $9)
    )
    (set_local $9
     (tee_local $7
      (i32.add
       (get_local $9)
       (i32.const -24)
      )
     )
    )
    (br_if $label$3
     (i32.ne
      (i32.add
       (get_local $7)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $9
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (block $label$7
      (block $label$8
       (block $label$9
        (block $label$10
         (block $label$11
          (br_if $label$11
           (i32.eq
            (get_local $10)
            (get_local $5)
           )
          )
          (call $eosio_assert
           (i32.eq
            (i32.load offset=60
             (tee_local $7
              (i32.load
               (i32.add
                (get_local $10)
                (i32.const -24)
               )
              )
             )
            )
            (get_local $9)
           )
           (i32.const 576)
          )
          (br_if $label$10
           (get_local $7)
          )
          (br $label$9)
         )
         (br_if $label$9
          (i32.lt_s
           (tee_local $7
            (call $db_find_i64
             (i64.load
              (i32.add
               (get_local $0)
               (i32.const 48)
              )
             )
             (i64.load
              (i32.add
               (get_local $0)
               (i32.const 56)
              )
             )
             (i64.const -6030912142679474176)
             (get_local $1)
            )
           )
           (i32.const 0)
          )
         )
         (call $eosio_assert
          (i32.eq
           (i32.load offset=60
            (tee_local $7
             (call $_ZNK5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE31load_object_by_primary_iteratorEl
              (get_local $9)
              (get_local $7)
             )
            )
           )
           (get_local $9)
          )
          (i32.const 576)
         )
        )
        (block $label$12
         (br_if $label$12
          (i32.eq
           (i32.add
            (get_local $11)
            (i32.const 8)
           )
           (tee_local $10
            (i32.add
             (get_local $7)
             (i32.const 48)
            )
           )
          )
         )
         (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE6assignIPyEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIyNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
          (i32.add
           (get_local $11)
           (i32.const 8)
          )
          (i32.load
           (get_local $10)
          )
          (i32.load
           (i32.add
            (get_local $7)
            (i32.const 52)
           )
          )
         )
        )
        (br_if $label$8
         (i32.eq
          (tee_local $10
           (i32.load offset=12
            (get_local $11)
           )
          )
          (i32.load
           (i32.add
            (i32.add
             (get_local $11)
             (i32.const 8)
            )
            (i32.const 8)
           )
          )
         )
        )
        (i64.store
         (get_local $10)
         (i64.load offset=24
          (get_local $11)
         )
        )
        (i32.store offset=12
         (get_local $11)
         (i32.add
          (get_local $10)
          (i32.const 8)
         )
        )
        (br $label$7)
       )
       (br_if $label$6
        (i32.eq
         (tee_local $7
          (i32.load offset=12
           (get_local $11)
          )
         )
         (i32.load
          (i32.add
           (i32.add
            (get_local $11)
            (i32.const 8)
           )
           (i32.const 8)
          )
         )
        )
       )
       (i64.store
        (get_local $7)
        (i64.load offset=24
         (get_local $11)
        )
       )
       (i32.store offset=12
        (get_local $11)
        (i32.add
         (get_local $7)
         (i32.const 8)
        )
       )
       (br $label$5)
      )
      (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE21__push_back_slow_pathIRKyEEvOT_
       (i32.add
        (get_local $11)
        (i32.const 8)
       )
       (i32.add
        (get_local $11)
        (i32.const 24)
       )
      )
     )
     (i32.store offset=64
      (get_local $11)
      (i32.add
       (get_local $11)
       (i32.const 8)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 720)
     )
     (call $_ZN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE6modifyIZNS1_7setcoinEyyyE3$_1EEvRKS2_yOT_
      (get_local $9)
      (get_local $7)
      (i32.add
       (get_local $11)
       (i32.const 64)
      )
     )
     (br $label$4)
    )
    (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE21__push_back_slow_pathIRKyEEvOT_
     (i32.add
      (get_local $11)
      (i32.const 8)
     )
     (i32.add
      (get_local $11)
      (i32.const 24)
     )
    )
   )
   (set_local $1
    (i64.load
     (get_local $0)
    )
   )
   (i32.store offset=4
    (get_local $11)
    (i32.add
     (get_local $11)
     (i32.const 8)
    )
   )
   (i32.store
    (get_local $11)
    (i32.add
     (get_local $11)
     (i32.const 32)
    )
   )
   (i64.store offset=56
    (get_local $11)
    (get_local $1)
   )
   (call $eosio_assert
    (i64.eq
     (i64.load
      (i32.add
       (get_local $0)
       (i32.const 48)
      )
     )
     (call $current_receiver)
    )
    (i32.const 640)
   )
   (i32.store offset=64
    (get_local $11)
    (get_local $9)
   )
   (i32.store offset=68
    (get_local $11)
    (get_local $11)
   )
   (i32.store offset=72
    (get_local $11)
    (i32.add
     (get_local $11)
     (i32.const 56)
    )
   )
   (i32.store offset=56
    (tee_local $7
     (call $_Znwj
      (i32.const 80)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=48 align=4
    (get_local $7)
    (i64.const 0)
   )
   (i32.store offset=60
    (get_local $7)
    (get_local $9)
   )
   (call $_ZZN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE7emplaceIZNS1_7setcoinEyyyE3$_0EENS3_14const_iteratorEyOT_ENKUlRS7_E_clINS3_4itemEEEDaS9_
    (i32.add
     (get_local $11)
     (i32.const 64)
    )
    (get_local $7)
   )
   (i32.store offset=48
    (get_local $11)
    (get_local $7)
   )
   (i64.store offset=64
    (get_local $11)
    (tee_local $1
     (i64.load
      (get_local $7)
     )
    )
   )
   (i32.store offset=44
    (get_local $11)
    (tee_local $10
     (i32.load offset=64
      (get_local $7)
     )
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.ge_u
       (tee_local $9
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $0)
           (i32.const 76)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 80)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $9)
      (get_local $1)
     )
     (i32.store offset=16
      (get_local $9)
      (get_local $10)
     )
     (i32.store offset=48
      (get_local $11)
      (i32.const 0)
     )
     (i32.store
      (get_local $9)
      (get_local $7)
     )
     (i32.store
      (get_local $6)
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
     )
     (br $label$13)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 72)
     )
     (i32.add
      (get_local $11)
      (i32.const 48)
     )
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.add
      (get_local $11)
      (i32.const 44)
     )
    )
   )
   (set_local $9
    (i32.load offset=48
     (get_local $11)
    )
   )
   (i32.store offset=48
    (get_local $11)
    (i32.const 0)
   )
   (br_if $label$4
    (i32.eqz
     (get_local $9)
    )
   )
   (block $label$15
    (br_if $label$15
     (i32.eqz
      (tee_local $7
       (i32.load offset=48
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 52)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (set_local $8
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 88)
     )
    )
    (call $current_receiver)
   )
   (i32.const 640)
  )
  (i32.store offset=32
   (tee_local $9
    (call $_Znwj
     (i32.const 48)
    )
   )
   (get_local $4)
  )
  (i64.store offset=16
   (get_local $9)
   (get_local $2)
  )
  (i64.store offset=24
   (get_local $9)
   (get_local $3)
  )
  (i64.store
   (get_local $9)
   (i64.load offset=24
    (get_local $11)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.load offset=32
    (get_local $11)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $11)
     (i32.const 64)
    )
    (get_local $9)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.const 24)
    )
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $9)
   (tee_local $10
    (call $db_store_i64
     (i64.load
      (i32.add
       (get_local $0)
       (i32.const 96)
      )
     )
     (i64.const 4980189539499769856)
     (get_local $8)
     (tee_local $1
      (i64.load
       (get_local $9)
      )
     )
     (i32.add
      (get_local $11)
      (i32.const 64)
     )
     (i32.const 32)
    )
   )
  )
  (block $label$16
   (br_if $label$16
    (i64.lt_u
     (get_local $1)
     (i64.load
      (tee_local $7
       (i32.add
        (get_local $0)
        (i32.const 104)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $7)
    (select
     (i64.const -2)
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $1)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=56
   (get_local $11)
   (get_local $9)
  )
  (i64.store offset=64
   (get_local $11)
   (tee_local $1
    (i64.load
     (get_local $9)
    )
   )
  )
  (i32.store
   (get_local $11)
   (get_local $10)
  )
  (block $label$17
   (block $label$18
    (br_if $label$18
     (i32.ge_u
      (tee_local $7
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $0)
          (i32.const 116)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 120)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $7)
     (get_local $1)
    )
    (i32.store offset=16
     (get_local $7)
     (get_local $10)
    )
    (i32.store offset=56
     (get_local $11)
     (i32.const 0)
    )
    (i32.store
     (get_local $7)
     (get_local $9)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
    )
    (br $label$17)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $0)
     (i32.const 112)
    )
    (i32.add
     (get_local $11)
     (i32.const 56)
    )
    (i32.add
     (get_local $11)
     (i32.const 64)
    )
    (get_local $11)
   )
  )
  (set_local $9
   (i32.load offset=56
    (get_local $11)
   )
  )
  (i32.store offset=56
   (get_local $11)
   (i32.const 0)
  )
  (block $label$19
   (br_if $label$19
    (i32.eqz
     (get_local $9)
    )
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (block $label$20
   (br_if $label$20
    (i32.eqz
     (tee_local $9
      (i32.load offset=8
       (get_local $11)
      )
     )
    )
   )
   (i32.store offset=12
    (get_local $11)
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 544)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=32
    (tee_local $6
     (call $_Znwj
      (i32.const 48)
     )
    )
    (get_local $0)
   )
   (drop
    (call $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN12cryptojinian4coinE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=36
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=36
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 1088)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const 4980189539499769856)
      )
     )
     (i32.const -1)
    )
    (i32.const 1024)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 1024)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZNK5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 544)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (get_local $6)
      (i32.const 512)
     )
    )
    (call $free
     (get_local $4)
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (set_local $4
     (i32.load offset=36
      (get_local $8)
     )
    )
   )
   (i32.store offset=56
    (tee_local $6
     (call $_Znwj
      (i32.const 80)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=48 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEyEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 48)
     )
    )
   )
   (i32.store offset=64
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=64
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $7
       (i32.load offset=48
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 52)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIyNS_9allocatorIyEEE21__push_back_slow_pathIRKyEEvOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ge_u
       (tee_local $7
        (i32.add
         (tee_local $3
          (i32.shr_s
           (i32.sub
            (tee_local $6
             (i32.load offset=4
              (get_local $0)
             )
            )
            (tee_local $5
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 3)
          )
         )
         (i32.const 1)
        )
       )
       (i32.const 536870912)
      )
     )
     (set_local $4
      (i32.const 536870911)
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.shr_s
          (tee_local $2
           (i32.sub
            (i32.load offset=8
             (get_local $0)
            )
            (get_local $5)
           )
          )
          (i32.const 3)
         )
         (i32.const 268435454)
        )
       )
       (br_if $label$3
        (i32.eqz
         (tee_local $4
          (select
           (get_local $7)
           (tee_local $4
            (i32.shr_s
             (get_local $2)
             (i32.const 2)
            )
           )
           (i32.lt_u
            (get_local $4)
            (get_local $7)
           )
          )
         )
        )
       )
       (br_if $label$1
        (i32.ge_u
         (get_local $4)
         (i32.const 536870912)
        )
       )
      )
      (set_local $7
       (call $_Znwj
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
      (set_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (set_local $5
       (i32.load
        (get_local $0)
       )
      )
      (br $label$0)
     )
     (set_local $4
      (i32.const 0)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (call $abort)
   (unreachable)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (get_local $7)
     (i32.shl
      (get_local $3)
      (i32.const 3)
     )
    )
   )
   (i64.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.sub
    (get_local $3)
    (tee_local $6
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $7)
    (i32.shl
     (get_local $4)
     (i32.const 3)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_s
     (get_local $6)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $1)
     (get_local $5)
     (get_local $6)
    )
   )
   (set_local $5
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE7emplaceIZNS1_7setcoinEyyyE3$_0EENS3_14const_iteratorEyOT_ENKUlRS7_E_clINS3_4itemEEEDaS9_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (set_local $10
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $7
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $3
      (i32.add
       (get_local $1)
       (i32.const 48)
      )
     )
     (tee_local $7
      (i32.load offset=4
       (get_local $7)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE6assignIPyEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIyNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $3)
    (i32.load
     (get_local $7)
    )
    (i32.load offset=4
     (get_local $7)
    )
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $6
      (i32.sub
       (tee_local $4
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 52)
         )
        )
       )
       (tee_local $5
        (i32.load
         (get_local $3)
        )
       )
      )
     )
     (i32.const 3)
    )
   )
  )
  (set_local $7
   (i32.const 8)
  )
  (loop $label$1
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $5)
     (get_local $4)
    )
   )
   (set_local $7
    (i32.add
     (i32.and
      (get_local $6)
      (i32.const -8)
     )
     (get_local $7)
    )
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (get_local $7)
      (i32.const 513)
     )
    )
    (set_local $9
     (call $malloc
      (get_local $7)
     )
    )
    (br $label$3)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $9
     (i32.sub
      (get_local $9)
      (i32.and
       (i32.add
        (get_local $7)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $10)
   (get_local $9)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $9)
    (get_local $7)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $7)
    (i32.const 7)
   )
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (get_local $9)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $10)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEyEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (get_local $10)
    (get_local $3)
   )
  )
  (i32.store offset=64
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -6030912142679474176)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $8
     (i64.load
      (get_local $1)
     )
    )
    (get_local $9)
    (get_local $7)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_u
     (get_local $7)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $9)
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.lt_u
     (get_local $8)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $8)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $8)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $6
         (i32.load offset=48
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 52)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
 )
 (func $_ZNSt3__16vectorIyNS_9allocatorIyEEE6assignIPyEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIyNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_u
        (tee_local $4
         (i32.shr_s
          (tee_local $3
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
          )
          (i32.const 3)
         )
        )
        (i32.shr_s
         (i32.sub
          (tee_local $8
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $5
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 3)
        )
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
       (set_local $8
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.const 0)
       )
       (i64.store align=4
        (get_local $0)
        (i64.const 0)
       )
      )
      (br_if $label$0
       (i32.ge_u
        (get_local $4)
        (i32.const 536870912)
       )
      )
      (set_local $5
       (i32.const 536870911)
      )
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (i32.shr_s
          (get_local $8)
          (i32.const 3)
         )
         (i32.const 268435454)
        )
       )
       (set_local $5
        (get_local $4)
       )
       (br_if $label$5
        (i32.lt_u
         (tee_local $2
          (i32.shr_s
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $4)
        )
       )
       (set_local $5
        (get_local $2)
       )
       (br_if $label$0
        (i32.ge_u
         (get_local $2)
         (i32.const 536870912)
        )
       )
      )
      (i32.store
       (get_local $0)
       (tee_local $5
        (call $_Znwj
         (tee_local $4
          (i32.shl
           (get_local $5)
           (i32.const 3)
          )
         )
        )
       )
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $5)
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.add
        (get_local $5)
        (get_local $4)
       )
      )
      (br_if $label$2
       (i32.lt_s
        (get_local $3)
        (i32.const 1)
       )
      )
      (drop
       (call $memcpy
        (get_local $5)
        (get_local $1)
        (get_local $3)
       )
      )
      (i32.store
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (i32.add
        (i32.load
         (get_local $0)
        )
        (get_local $3)
       )
      )
      (return)
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (tee_local $7
         (i32.shr_s
          (tee_local $6
           (i32.sub
            (tee_local $8
             (select
              (i32.add
               (get_local $1)
               (tee_local $3
                (i32.sub
                 (i32.load offset=4
                  (get_local $0)
                 )
                 (get_local $5)
                )
               )
              )
              (get_local $2)
              (i32.gt_u
               (get_local $4)
               (tee_local $3
                (i32.shr_s
                 (get_local $3)
                 (i32.const 3)
                )
               )
              )
             )
            )
            (get_local $1)
           )
          )
          (i32.const 3)
         )
        )
       )
      )
      (drop
       (call $memmove
        (get_local $5)
        (get_local $1)
        (get_local $6)
       )
      )
     )
     (br_if $label$1
      (i32.le_u
       (get_local $4)
       (get_local $3)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (get_local $8)
       (get_local $1)
      )
     )
     (i32.store
      (get_local $0)
      (i32.add
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (return)
    )
    (return)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $5)
     (i32.shl
      (get_local $7)
      (i32.const 3)
     )
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_ZN5eosio11multi_indexILy12415831931030077440EN12cryptojinian6playerEJEE6modifyIZNS1_7setcoinEyyyE3$_1EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (set_local $10
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 768)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 816)
  )
  (set_local $8
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $4
      (i32.add
       (get_local $1)
       (i32.const 48)
      )
     )
     (tee_local $2
      (i32.load
       (get_local $2)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE6assignIPyEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIyNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $4)
    (i32.load
     (get_local $2)
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (set_local $8
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (get_local $8)
   )
   (i32.const 880)
  )
  (set_local $8
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $7
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 52)
         )
        )
       )
       (tee_local $6
        (i32.load
         (get_local $4)
        )
       )
      )
     )
     (i32.const 3)
    )
   )
  )
  (set_local $2
   (i32.const 8)
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $6)
     (get_local $5)
    )
   )
   (set_local $2
    (i32.add
     (i32.and
      (get_local $7)
      (i32.const -8)
     )
     (get_local $2)
    )
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $9
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$3)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $9
     (i32.sub
      (get_local $9)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $10)
   (get_local $9)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $9)
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $2)
    (i32.const 7)
   )
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (get_local $9)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $10)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEyEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (get_local $10)
    (get_local $4)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $9)
   (get_local $2)
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $9)
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEyEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 3)
    )
   )
  )
  (set_local $7
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $6)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $6
         (i64.shr_u
          (get_local $6)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $7)
     )
     (i32.const 0)
    )
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $7
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $5
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
       (get_local $7)
      )
      (i32.const 7)
     )
     (i32.const 704)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $2)
      )
      (get_local $5)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $2)
     (tee_local $7
      (i32.add
       (i32.load
        (get_local $2)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (get_local $3)
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const 8)
       )
      )
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEyEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 944)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.le_u
       (tee_local $5
        (i32.wrap/i64
         (get_local $6)
        )
       )
       (tee_local $7
        (i32.shr_s
         (i32.sub
          (tee_local $3
           (i32.load offset=4
            (get_local $1)
           )
          )
          (tee_local $4
           (i32.load
            (get_local $1)
           )
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (call $_ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEj
      (get_local $1)
      (i32.sub
       (get_local $5)
       (get_local $7)
      )
     )
     (br_if $label$2
      (i32.ne
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
       (tee_local $3
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
      )
     )
     (br $label$1)
    )
    (block $label$4
     (br_if $label$4
      (i32.ge_u
       (get_local $5)
       (get_local $7)
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
      (tee_local $3
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $5)
         (i32.const 3)
        )
       )
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (get_local $4)
      (get_local $3)
     )
    )
   )
   (set_local $7
    (i32.load
     (tee_local $5
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
   )
   (loop $label$5
    (call $eosio_assert
     (i32.gt_u
      (i32.sub
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
       (get_local $7)
      )
      (i32.const 7)
     )
     (i32.const 512)
    )
    (drop
     (call $memcpy
      (get_local $4)
      (i32.load
       (get_local $5)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $5)
     (tee_local $7
      (i32.add
       (i32.load
        (get_local $5)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$5
     (i32.ne
      (get_local $3)
      (tee_local $4
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIyNS_9allocatorIyEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.shr_s
          (i32.sub
           (tee_local $7
            (i32.load offset=8
             (get_local $0)
            )
           )
           (tee_local $2
            (i32.load offset=4
             (get_local $0)
            )
           )
          )
          (i32.const 3)
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.ge_u
         (tee_local $2
          (i32.add
           (tee_local $4
            (i32.shr_s
             (i32.sub
              (get_local $2)
              (tee_local $3
               (i32.load
                (get_local $0)
               )
              )
             )
             (i32.const 3)
            )
           )
           (get_local $1)
          )
         )
         (i32.const 536870912)
        )
       )
       (set_local $6
        (i32.const 536870911)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (i32.shr_s
           (tee_local $7
            (i32.sub
             (get_local $7)
             (get_local $3)
            )
           )
           (i32.const 3)
          )
          (i32.const 268435454)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $2)
            (tee_local $6
             (i32.shr_s
              (get_local $7)
              (i32.const 2)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $2)
            )
           )
          )
         )
        )
        (br_if $label$1
         (i32.ge_u
          (get_local $6)
          (i32.const 536870912)
         )
        )
       )
       (set_local $7
        (call $_Znwj
         (i32.shl
          (get_local $6)
          (i32.const 3)
         )
        )
       )
       (br $label$0)
      )
      (set_local $6
       (get_local $2)
      )
      (set_local $7
       (get_local $1)
      )
      (loop $label$6
       (i64.store
        (get_local $6)
        (i64.const 0)
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 8)
        )
       )
       (br_if $label$6
        (tee_local $7
         (i32.add
          (get_local $7)
          (i32.const -1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.add
        (get_local $2)
        (i32.shl
         (get_local $1)
         (i32.const 3)
        )
       )
      )
      (return)
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (call $abort)
   (unreachable)
  )
  (set_local $3
   (i32.add
    (get_local $7)
    (i32.shl
     (get_local $6)
     (i32.const 3)
    )
   )
  )
  (set_local $6
   (tee_local $2
    (i32.add
     (get_local $7)
     (i32.shl
      (get_local $4)
      (i32.const 3)
     )
    )
   )
  )
  (set_local $7
   (get_local $1)
  )
  (loop $label$7
   (i64.store
    (get_local $6)
    (i64.const 0)
   )
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (br_if $label$7
    (tee_local $7
     (i32.add
      (get_local $7)
      (i32.const -1)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
  )
  (set_local $1
   (i32.sub
    (get_local $2)
    (tee_local $7
     (i32.sub
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $6
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_s
     (get_local $7)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $1)
     (get_local $6)
     (get_local $7)
    )
   )
   (set_local $6
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $5)
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $3)
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZrsIN5eosio10datastreamIPKcEEERT_S6_RN12cryptojinian4coinE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $0)
 )
 (func $_ZN12cryptojinian12addcoincountEy (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $1
   (i64.shl
    (get_local $1)
    (i64.const 48)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 196)
       )
      )
     )
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 168)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=16
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 576)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $7
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 168)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 176)
        )
       )
       (i64.const -3020626370892922880)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
        (get_local $4)
        (get_local $7)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 576)
   )
  )
  (call $eosio_assert
   (tee_local $7
    (i32.ne
     (get_local $6)
     (i32.const 0)
    )
   )
   (i32.const 1136)
  )
  (set_local $1
   (i64.load offset=8
    (get_local $6)
   )
  )
  (call $eosio_assert
   (get_local $7)
   (i32.const 720)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=16
     (get_local $6)
    )
    (get_local $4)
   )
   (i32.const 768)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 168)
     )
    )
    (call $current_receiver)
   )
   (i32.const 816)
  )
  (i64.store offset=8
   (get_local $6)
   (tee_local $5
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
  )
  (set_local $1
   (i64.load
    (get_local $6)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 880)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (drop
   (call $memcpy
    (i32.or
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=20
    (get_local $6)
   )
   (i64.const 0)
   (get_local $8)
   (i32.const 16)
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $1)
     (i64.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 184)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $6)
    (select
     (i64.const -2)
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $1)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $5)
 )
 (func $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 544)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i64.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i64.const 0)
   )
   (i64.store
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=16
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (i32.and
      (get_local $4)
      (i32.const -8)
     )
     (i32.const 8)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=20
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN12cryptojinian11findcoinposEy (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $24
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $15
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 156)
       )
      )
     )
     (tee_local $17
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 152)
       )
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $15)
     (i32.const -24)
    )
   )
   (set_local $5
    (i32.sub
     (i32.const 0)
     (get_local $17)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $14)
       )
      )
     )
    )
    (set_local $15
     (get_local $14)
    )
    (set_local $14
     (tee_local $6
      (i32.add
       (get_local $14)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $6)
       (get_local $5)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 128)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $15)
      (get_local $17)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=56
       (tee_local $11
        (i32.load
         (i32.add
          (get_local $15)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $2)
     )
     (i32.const 576)
    )
    (br $label$2)
   )
   (set_local $11
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $14
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 128)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 136)
        )
       )
       (i64.const 7235159537265672192)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $11
       (call $_ZNK5eosio11multi_indexILy7235159537265672192EN12cryptojinian6globalEJEE31load_object_by_primary_iteratorEl
        (get_local $2)
        (get_local $14)
       )
      )
     )
     (get_local $2)
    )
    (i32.const 576)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $11)
     (i32.const 0)
    )
   )
   (i32.const 1136)
  )
  (block $label$4
   (br_if $label$4
    (i32.eq
     (tee_local $15
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 196)
       )
      )
     )
     (tee_local $17
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $15)
     (i32.const -24)
    )
   )
   (set_local $5
    (i32.sub
     (i32.const 0)
     (get_local $17)
    )
   )
   (loop $label$5
    (br_if $label$4
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $14)
       )
      )
     )
    )
    (set_local $15
     (get_local $14)
    )
    (set_local $14
     (tee_local $6
      (i32.add
       (get_local $14)
       (i32.const -24)
      )
     )
    )
    (br_if $label$5
     (i32.ne
      (i32.add
       (get_local $6)
       (get_local $5)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 168)
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.eq
      (get_local $15)
      (get_local $17)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=16
       (i32.load
        (i32.add
         (get_local $15)
         (i32.const -24)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 576)
    )
    (br $label$6)
   )
   (br_if $label$6
    (i32.lt_s
     (tee_local $14
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 168)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 176)
        )
       )
       (i64.const -3020626370892922880)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
       (get_local $4)
       (get_local $14)
      )
     )
     (get_local $4)
    )
    (i32.const 576)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eq
     (tee_local $15
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 196)
       )
      )
     )
     (tee_local $17
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $15)
     (i32.const -24)
    )
   )
   (set_local $5
    (i32.sub
     (i32.const 0)
     (get_local $17)
    )
   )
   (loop $label$9
    (br_if $label$8
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $14)
       )
      )
     )
    )
    (set_local $15
     (get_local $14)
    )
    (set_local $14
     (tee_local $6
      (i32.add
       (get_local $14)
       (i32.const -24)
      )
     )
    )
    (br_if $label$9
     (i32.ne
      (i32.add
       (get_local $6)
       (get_local $5)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$10
   (block $label$11
    (br_if $label$11
     (i32.eq
      (get_local $15)
      (get_local $17)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=16
       (i32.load
        (i32.add
         (get_local $15)
         (i32.const -24)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 576)
    )
    (br $label$10)
   )
   (br_if $label$10
    (i32.lt_s
     (tee_local $14
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 168)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 176)
        )
       )
       (i64.const -3020626370892922880)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
       (get_local $4)
       (get_local $14)
      )
     )
     (get_local $4)
    )
    (i32.const 576)
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eq
     (tee_local $15
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 196)
       )
      )
     )
     (tee_local $17
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
    )
   )
   (set_local $14
    (i32.add
     (get_local $15)
     (i32.const -24)
    )
   )
   (set_local $5
    (i32.sub
     (i32.const 0)
     (get_local $17)
    )
   )
   (loop $label$13
    (br_if $label$12
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $14)
       )
      )
     )
    )
    (set_local $15
     (get_local $14)
    )
    (set_local $14
     (tee_local $6
      (i32.add
       (get_local $14)
       (i32.const -24)
      )
     )
    )
    (br_if $label$13
     (i32.ne
      (i32.add
       (get_local $6)
       (get_local $5)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$14
   (block $label$15
    (br_if $label$15
     (i32.eq
      (get_local $15)
      (get_local $17)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=16
       (i32.load
        (i32.add
         (get_local $15)
         (i32.const -24)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 576)
    )
    (set_local $12
     (i32.add
      (get_local $0)
      (i32.const 176)
     )
    )
    (br $label$14)
   )
   (br_if $label$14
    (i32.lt_s
     (tee_local $14
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 168)
        )
       )
       (i64.load
        (tee_local $12
         (i32.add
          (get_local $0)
          (i32.const 176)
         )
        )
       )
       (i64.const -3020626370892922880)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
       (get_local $4)
       (get_local $14)
      )
     )
     (get_local $4)
    )
    (i32.const 576)
   )
  )
  (set_local $7
   (i64.const 0)
  )
  (set_local $9
   (i32.add
    (get_local $0)
    (i32.const 192)
   )
  )
  (set_local $10
   (i32.add
    (get_local $0)
    (i32.const 196)
   )
  )
  (set_local $20
   (i64.const 0)
  )
  (set_local $21
   (i64.const 0)
  )
  (set_local $13
   (i32.const 0)
  )
  (block $label$16
   (loop $label$17
    (block $label$18
     (br_if $label$18
      (i32.eq
       (tee_local $15
        (i32.load
         (get_local $10)
        )
       )
       (tee_local $17
        (i32.load
         (get_local $9)
        )
       )
      )
     )
     (set_local $14
      (i32.add
       (get_local $15)
       (i32.const -24)
      )
     )
     (set_local $5
      (i32.sub
       (i32.const 0)
       (get_local $17)
      )
     )
     (loop $label$19
      (br_if $label$18
       (i64.eqz
        (i64.load
         (i32.load
          (get_local $14)
         )
        )
       )
      )
      (set_local $15
       (get_local $14)
      )
      (set_local $14
       (tee_local $6
        (i32.add
         (get_local $14)
         (i32.const -24)
        )
       )
      )
      (br_if $label$19
       (i32.ne
        (i32.add
         (get_local $6)
         (get_local $5)
        )
        (i32.const -24)
       )
      )
     )
    )
    (block $label$20
     (block $label$21
      (block $label$22
       (br_if $label$22
        (i32.eq
         (get_local $15)
         (get_local $17)
        )
       )
       (call $eosio_assert
        (i32.eq
         (i32.load offset=16
          (tee_local $17
           (i32.load
            (i32.add
             (get_local $15)
             (i32.const -24)
            )
           )
          )
         )
         (get_local $4)
        )
        (i32.const 576)
       )
       (br_if $label$21
        (get_local $17)
       )
       (set_local $18
        (i64.const 0)
       )
       (set_local $17
        (i32.const 0)
       )
       (set_local $16
        (i32.const 1)
       )
       (br $label$20)
      )
      (set_local $18
       (i64.const 0)
      )
      (set_local $17
       (i32.const 0)
      )
      (block $label$23
       (br_if $label$23
        (i32.ge_s
         (tee_local $14
          (call $db_find_i64
           (i64.load
            (get_local $4)
           )
           (i64.load
            (get_local $12)
           )
           (i64.const -3020626370892922880)
           (i64.const 0)
          )
         )
         (i32.const 0)
        )
       )
       (set_local $16
        (i32.const 1)
       )
       (br $label$20)
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (tee_local $17
          (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
           (get_local $4)
           (get_local $14)
          )
         )
        )
        (get_local $4)
       )
       (i32.const 576)
      )
     )
     (set_local $18
      (i64.load offset=8
       (get_local $17)
      )
     )
     (set_local $16
      (i32.const 0)
     )
    )
    (block $label$24
     (br_if $label$24
      (i64.gt_u
       (tee_local $8
        (i64.add
         (i64.sub
          (i64.const 6400)
          (get_local $18)
         )
         (get_local $21)
        )
       )
       (get_local $1)
      )
     )
     (set_local $7
      (i64.add
       (get_local $7)
       (i64.const 100)
      )
     )
     (set_local $20
      (i64.add
       (get_local $20)
       (i64.const 6400)
      )
     )
     (set_local $21
      (get_local $8)
     )
     (br_if $label$17
      (i32.lt_s
       (tee_local $13
        (i32.add
         (get_local $13)
         (i32.const 1)
        )
       )
       (i32.const 100)
      )
     )
     (br $label$16)
    )
   )
   (set_local $19
    (i64.const 0)
   )
   (set_local $9
    (i32.add
     (get_local $0)
     (i32.const 192)
    )
   )
   (set_local $10
    (i32.add
     (get_local $0)
     (i32.const 196)
    )
   )
   (loop $label$25
    (set_local $8
     (i64.shl
      (get_local $19)
      (i64.const 16)
     )
    )
    (block $label$26
     (br_if $label$26
      (i32.eq
       (tee_local $15
        (i32.load
         (get_local $10)
        )
       )
       (tee_local $13
        (i32.load
         (get_local $9)
        )
       )
      )
     )
     (set_local $14
      (i32.add
       (get_local $15)
       (i32.const -24)
      )
     )
     (set_local $5
      (i32.sub
       (i32.const 0)
       (get_local $13)
      )
     )
     (loop $label$27
      (br_if $label$26
       (i64.eq
        (i64.load
         (i32.load
          (get_local $14)
         )
        )
        (get_local $8)
       )
      )
      (set_local $15
       (get_local $14)
      )
      (set_local $14
       (tee_local $6
        (i32.add
         (get_local $14)
         (i32.const -24)
        )
       )
      )
      (br_if $label$27
       (i32.ne
        (i32.add
         (get_local $6)
         (get_local $5)
        )
        (i32.const -24)
       )
      )
     )
    )
    (block $label$28
     (block $label$29
      (block $label$30
       (br_if $label$30
        (i32.eq
         (get_local $15)
         (get_local $13)
        )
       )
       (call $eosio_assert
        (i32.eq
         (i32.load offset=16
          (tee_local $14
           (i32.load
            (i32.add
             (get_local $15)
             (i32.const -24)
            )
           )
          )
         )
         (get_local $4)
        )
        (i32.const 576)
       )
       (br_if $label$29
        (get_local $14)
       )
       (set_local $22
        (i64.const 0)
       )
       (set_local $14
        (i32.const 0)
       )
       (set_local $15
        (i32.const 1)
       )
       (br $label$28)
      )
      (set_local $14
       (i32.const 0)
      )
      (block $label$31
       (br_if $label$31
        (i32.ge_s
         (tee_local $6
          (call $db_find_i64
           (i64.load
            (get_local $4)
           )
           (i64.load
            (get_local $12)
           )
           (i64.const -3020626370892922880)
           (get_local $8)
          )
         )
         (i32.const 0)
        )
       )
       (set_local $22
        (i64.const 0)
       )
       (set_local $15
        (i32.const 1)
       )
       (br $label$28)
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (tee_local $14
          (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
           (get_local $4)
           (get_local $6)
          )
         )
        )
        (get_local $4)
       )
       (i32.const 576)
      )
     )
     (set_local $22
      (i64.load offset=8
       (get_local $14)
      )
     )
     (set_local $15
      (i32.const 0)
     )
    )
    (block $label$32
     (br_if $label$32
      (i64.gt_u
       (tee_local $23
        (i64.add
         (i64.sub
          (i64.const 64)
          (get_local $22)
         )
         (get_local $21)
        )
       )
       (get_local $1)
      )
     )
     (set_local $7
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
     )
     (set_local $20
      (i64.add
       (get_local $20)
       (i64.const 64)
      )
     )
     (set_local $21
      (get_local $23)
     )
     (br_if $label$25
      (i64.lt_s
       (tee_local $19
        (i64.add
         (get_local $19)
         (i64.const 1)
        )
       )
       (i64.const 100)
      )
     )
     (br $label$16)
    )
   )
   (block $label$33
    (br_if $label$33
     (i32.eq
      (tee_local $13
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 196)
        )
       )
      )
      (tee_local $10
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 192)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.add
      (get_local $13)
      (i32.const -24)
     )
    )
    (set_local $9
     (i32.sub
      (i32.const 0)
      (get_local $10)
     )
    )
    (loop $label$34
     (br_if $label$33
      (i64.eq
       (i64.load
        (i32.load
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (set_local $13
      (get_local $6)
     )
     (set_local $6
      (tee_local $5
       (i32.add
        (get_local $6)
        (i32.const -24)
       )
      )
     )
     (br_if $label$34
      (i32.ne
       (i32.add
        (get_local $5)
        (get_local $9)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$35
    (block $label$36
     (br_if $label$36
      (i32.eq
       (get_local $13)
       (get_local $10)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=16
        (tee_local $5
         (i32.load
          (i32.add
           (get_local $13)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 576)
     )
     (br $label$35)
    )
    (set_local $5
     (i32.const 0)
    )
    (br_if $label$35
     (i32.lt_s
      (tee_local $6
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load
         (get_local $12)
        )
        (i64.const -3020626370892922880)
        (get_local $7)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=16
       (tee_local $5
        (call $_ZNK5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $6)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 576)
    )
   )
   (set_local $23
    (i64.const 0)
   )
   (block $label$37
    (br_if $label$37
     (get_local $15)
    )
    (set_local $23
     (i64.load offset=8
      (get_local $5)
     )
    )
   )
   (set_local $7
    (i64.sub
     (get_local $1)
     (get_local $21)
    )
   )
   (set_local $1
    (i64.extend_u/i32
     (i64.ne
      (tee_local $19
       (i64.or
        (get_local $23)
        (i64.const -9223372036854775808)
       )
      )
      (get_local $23)
     )
    )
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $21
    (i64.const 0)
   )
   (block $label$38
    (loop $label$39
     (br_if $label$38
      (i64.eq
       (tee_local $7
        (i64.sub
         (get_local $7)
         (get_local $1)
        )
       )
       (i64.const 0)
      )
     )
     (set_local $21
      (i64.add
       (get_local $21)
       (i64.const -1)
      )
     )
     (br_if $label$39
      (i32.lt_s
       (tee_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (i32.const 64)
      )
     )
     (br $label$16)
    )
   )
   (call $eosio_assert
    (get_local $3)
    (i32.const 720)
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (get_local $11)
     )
     (get_local $2)
    )
    (i32.const 768)
   )
   (call $eosio_assert
    (i64.eq
     (i64.load
      (i32.add
       (get_local $0)
       (i32.const 128)
      )
     )
     (call $current_receiver)
    )
    (i32.const 816)
   )
   (i64.store offset=48
    (get_local $11)
    (i64.add
     (i64.load offset=48
      (get_local $11)
     )
     (i64.const -1)
    )
   )
   (set_local $7
    (i64.load
     (get_local $11)
    )
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 880)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (get_local $24)
     (get_local $11)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.or
      (get_local $24)
      (i32.const 8)
     )
     (i32.add
      (get_local $11)
      (i32.const 16)
     )
     (i32.const 32)
    )
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 704)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $24)
      (i32.const 40)
     )
     (i32.add
      (get_local $11)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
   (call $db_update_i64
    (i32.load offset=60
     (get_local $11)
    )
    (i64.const 0)
    (get_local $24)
    (i32.const 48)
   )
   (block $label$40
    (br_if $label$40
     (i64.lt_u
      (get_local $7)
      (i64.load
       (tee_local $6
        (i32.add
         (get_local $0)
         (i32.const 144)
        )
       )
      )
     )
    )
    (i64.store
     (get_local $6)
     (select
      (i64.const -2)
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $7)
       (i64.const -3)
      )
     )
    )
   )
   (block $label$41
    (block $label$42
     (block $label$43
      (block $label$44
       (block $label$45
        (block $label$46
         (block $label$47
          (block $label$48
           (block $label$49
            (block $label$50
             (block $label$51
              (br_if $label$51
               (i32.eqz
                (get_local $5)
               )
              )
              (call $eosio_assert
               (i32.const 1)
               (i32.const 720)
              )
              (call $eosio_assert
               (i32.eq
                (i32.load offset=16
                 (get_local $5)
                )
                (get_local $4)
               )
               (i32.const 768)
              )
              (call $eosio_assert
               (i64.eq
                (i64.load
                 (i32.add
                  (get_local $0)
                  (i32.const 168)
                 )
                )
                (call $current_receiver)
               )
               (i32.const 816)
              )
              (i64.store offset=8
               (get_local $5)
               (get_local $19)
              )
              (set_local $7
               (i64.load
                (get_local $5)
               )
              )
              (call $eosio_assert
               (i32.const 1)
               (i32.const 880)
              )
              (call $eosio_assert
               (i32.const 1)
               (i32.const 704)
              )
              (drop
               (call $memcpy
                (get_local $24)
                (get_local $5)
                (i32.const 8)
               )
              )
              (call $eosio_assert
               (i32.const 1)
               (i32.const 704)
              )
              (drop
               (call $memcpy
                (i32.or
                 (get_local $24)
                 (i32.const 8)
                )
                (i32.add
                 (get_local $5)
                 (i32.const 8)
                )
                (i32.const 8)
               )
              )
              (call $db_update_i64
               (i32.load offset=20
                (get_local $5)
               )
               (i64.const 0)
               (get_local $24)
               (i32.const 16)
              )
              (br_if $label$50
               (i64.lt_u
                (get_local $7)
                (i64.load
                 (tee_local $6
                  (i32.add
                   (get_local $0)
                   (i32.const 184)
                  )
                 )
                )
               )
              )
              (i64.store
               (get_local $6)
               (select
                (i64.const -2)
                (i64.add
                 (get_local $7)
                 (i64.const 1)
                )
                (i64.gt_u
                 (get_local $7)
                 (i64.const -3)
                )
               )
              )
              (set_local $7
               (i64.sub
                (get_local $20)
                (get_local $21)
               )
              )
              (br_if $label$49
               (get_local $15)
              )
              (br $label$48)
             )
             (set_local $23
              (i64.load
               (get_local $0)
              )
             )
             (call $eosio_assert
              (i64.eq
               (i64.load
                (i32.add
                 (get_local $0)
                 (i32.const 168)
                )
               )
               (call $current_receiver)
              )
              (i32.const 640)
             )
             (i32.store offset=16
              (tee_local $6
               (call $_Znwj
                (i32.const 32)
               )
              )
              (get_local $4)
             )
             (i64.store offset=8
              (get_local $6)
              (get_local $19)
             )
             (i64.store
              (get_local $6)
              (i64.sub
               (i64.const 0)
               (get_local $21)
              )
             )
             (call $eosio_assert
              (i32.const 1)
              (i32.const 704)
             )
             (drop
              (call $memcpy
               (get_local $24)
               (get_local $6)
               (i32.const 8)
              )
             )
             (call $eosio_assert
              (i32.const 1)
              (i32.const 704)
             )
             (drop
              (call $memcpy
               (i32.or
                (get_local $24)
                (i32.const 8)
               )
               (i32.add
                (get_local $6)
                (i32.const 8)
               )
               (i32.const 8)
              )
             )
             (i32.store offset=20
              (get_local $6)
              (tee_local $13
               (call $db_store_i64
                (i64.load
                 (get_local $12)
                )
                (i64.const -3020626370892922880)
                (get_local $23)
                (tee_local $7
                 (i64.load
                  (get_local $6)
                 )
                )
                (get_local $24)
                (i32.const 16)
               )
              )
             )
             (block $label$52
              (br_if $label$52
               (i64.lt_u
                (get_local $7)
                (i64.load
                 (tee_local $5
                  (i32.add
                   (get_local $0)
                   (i32.const 184)
                  )
                 )
                )
               )
              )
              (i64.store
               (get_local $5)
               (select
                (i64.const -2)
                (i64.add
                 (get_local $7)
                 (i64.const 1)
                )
                (i64.gt_u
                 (get_local $7)
                 (i64.const -3)
                )
               )
              )
             )
             (i32.store offset=56
              (get_local $24)
              (get_local $6)
             )
             (i64.store
              (get_local $24)
              (tee_local $7
               (i64.load
                (get_local $6)
               )
              )
             )
             (i32.store offset=52
              (get_local $24)
              (get_local $13)
             )
             (block $label$53
              (block $label$54
               (br_if $label$54
                (i32.ge_u
                 (tee_local $5
                  (i32.load
                   (tee_local $9
                    (i32.add
                     (get_local $0)
                     (i32.const 196)
                    )
                   )
                  )
                 )
                 (i32.load
                  (i32.add
                   (get_local $0)
                   (i32.const 200)
                  )
                 )
                )
               )
               (i64.store offset=8
                (get_local $5)
                (get_local $7)
               )
               (i32.store offset=16
                (get_local $5)
                (get_local $13)
               )
               (i32.store offset=56
                (get_local $24)
                (i32.const 0)
               )
               (i32.store
                (get_local $5)
                (get_local $6)
               )
               (i32.store
                (get_local $9)
                (i32.add
                 (get_local $5)
                 (i32.const 24)
                )
               )
               (br $label$53)
              )
              (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
               (i32.add
                (get_local $0)
                (i32.const 192)
               )
               (i32.add
                (get_local $24)
                (i32.const 56)
               )
               (get_local $24)
               (i32.add
                (get_local $24)
                (i32.const 52)
               )
              )
             )
             (set_local $6
              (i32.load offset=56
               (get_local $24)
              )
             )
             (i32.store offset=56
              (get_local $24)
              (i32.const 0)
             )
             (br_if $label$50
              (i32.eqz
               (get_local $6)
              )
             )
             (call $_ZdlPv
              (get_local $6)
             )
            )
            (set_local $7
             (i64.sub
              (get_local $20)
              (get_local $21)
             )
            )
            (br_if $label$48
             (i32.eqz
              (get_local $15)
             )
            )
           )
           (set_local $21
            (i64.load
             (get_local $0)
            )
           )
           (call $eosio_assert
            (i64.eq
             (i64.load
              (i32.add
               (get_local $0)
               (i32.const 168)
              )
             )
             (call $current_receiver)
            )
            (i32.const 640)
           )
           (i32.store offset=16
            (tee_local $14
             (call $_Znwj
              (i32.const 32)
             )
            )
            (get_local $4)
           )
           (i64.store offset=8
            (get_local $14)
            (i64.add
             (get_local $22)
             (i64.const 1)
            )
           )
           (i64.store
            (get_local $14)
            (get_local $8)
           )
           (call $eosio_assert
            (i32.const 1)
            (i32.const 704)
           )
           (drop
            (call $memcpy
             (get_local $24)
             (get_local $14)
             (i32.const 8)
            )
           )
           (call $eosio_assert
            (i32.const 1)
            (i32.const 704)
           )
           (drop
            (call $memcpy
             (i32.or
              (get_local $24)
              (i32.const 8)
             )
             (i32.add
              (get_local $14)
              (i32.const 8)
             )
             (i32.const 8)
            )
           )
           (i32.store offset=20
            (get_local $14)
            (tee_local $15
             (call $db_store_i64
              (i64.load
               (get_local $12)
              )
              (i64.const -3020626370892922880)
              (get_local $21)
              (tee_local $8
               (i64.load
                (get_local $14)
               )
              )
              (get_local $24)
              (i32.const 16)
             )
            )
           )
           (block $label$55
            (br_if $label$55
             (i64.lt_u
              (get_local $8)
              (i64.load
               (tee_local $6
                (i32.add
                 (get_local $0)
                 (i32.const 184)
                )
               )
              )
             )
            )
            (i64.store
             (get_local $6)
             (select
              (i64.const -2)
              (i64.add
               (get_local $8)
               (i64.const 1)
              )
              (i64.gt_u
               (get_local $8)
               (i64.const -3)
              )
             )
            )
           )
           (i32.store offset=56
            (get_local $24)
            (get_local $14)
           )
           (i64.store
            (get_local $24)
            (tee_local $8
             (i64.load
              (get_local $14)
             )
            )
           )
           (i32.store offset=52
            (get_local $24)
            (get_local $15)
           )
           (br_if $label$47
            (i32.ge_u
             (tee_local $6
              (i32.load
               (tee_local $5
                (i32.add
                 (get_local $0)
                 (i32.const 196)
                )
               )
              )
             )
             (i32.load
              (i32.add
               (get_local $0)
               (i32.const 200)
              )
             )
            )
           )
           (i64.store offset=8
            (get_local $6)
            (get_local $8)
           )
           (i32.store offset=16
            (get_local $6)
            (get_local $15)
           )
           (i32.store offset=56
            (get_local $24)
            (i32.const 0)
           )
           (i32.store
            (get_local $6)
            (get_local $14)
           )
           (i32.store
            (get_local $5)
            (i32.add
             (get_local $6)
             (i32.const 24)
            )
           )
           (br $label$46)
          )
          (call $eosio_assert
           (i32.const 1)
           (i32.const 720)
          )
          (call $eosio_assert
           (i32.eq
            (i32.load offset=16
             (get_local $14)
            )
            (get_local $4)
           )
           (i32.const 768)
          )
          (call $eosio_assert
           (i64.eq
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 168)
             )
            )
            (call $current_receiver)
           )
           (i32.const 816)
          )
          (i64.store offset=8
           (get_local $14)
           (i64.add
            (get_local $22)
            (i64.const 1)
           )
          )
          (set_local $8
           (i64.load
            (get_local $14)
           )
          )
          (call $eosio_assert
           (i32.const 1)
           (i32.const 880)
          )
          (call $eosio_assert
           (i32.const 1)
           (i32.const 704)
          )
          (drop
           (call $memcpy
            (get_local $24)
            (get_local $14)
            (i32.const 8)
           )
          )
          (call $eosio_assert
           (i32.const 1)
           (i32.const 704)
          )
          (drop
           (call $memcpy
            (i32.or
             (get_local $24)
             (i32.const 8)
            )
            (i32.add
             (get_local $14)
             (i32.const 8)
            )
            (i32.const 8)
           )
          )
          (call $db_update_i64
           (i32.load offset=20
            (get_local $14)
           )
           (i64.const 0)
           (get_local $24)
           (i32.const 16)
          )
          (br_if $label$45
           (i64.lt_u
            (get_local $8)
            (i64.load
             (tee_local $14
              (i32.add
               (get_local $0)
               (i32.const 184)
              )
             )
            )
           )
          )
          (i64.store
           (get_local $14)
           (select
            (i64.const -2)
            (i64.add
             (get_local $8)
             (i64.const 1)
            )
            (i64.gt_u
             (get_local $8)
             (i64.const -3)
            )
           )
          )
          (set_local $23
           (i64.add
            (get_local $7)
            (i64.const 1)
           )
          )
          (br_if $label$44
           (get_local $16)
          )
          (br $label$43)
         )
         (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
          (i32.add
           (get_local $0)
           (i32.const 192)
          )
          (i32.add
           (get_local $24)
           (i32.const 56)
          )
          (get_local $24)
          (i32.add
           (get_local $24)
           (i32.const 52)
          )
         )
        )
        (set_local $14
         (i32.load offset=56
          (get_local $24)
         )
        )
        (i32.store offset=56
         (get_local $24)
         (i32.const 0)
        )
        (br_if $label$45
         (i32.eqz
          (get_local $14)
         )
        )
        (call $_ZdlPv
         (get_local $14)
        )
       )
       (set_local $23
        (i64.add
         (get_local $7)
         (i64.const 1)
        )
       )
       (br_if $label$43
        (i32.eqz
         (get_local $16)
        )
       )
      )
      (set_local $7
       (i64.load
        (get_local $0)
       )
      )
      (call $eosio_assert
       (i64.eq
        (i64.load
         (i32.add
          (get_local $0)
          (i32.const 168)
         )
        )
        (call $current_receiver)
       )
       (i32.const 640)
      )
      (i32.store offset=16
       (tee_local $14
        (call $_Znwj
         (i32.const 32)
        )
       )
       (get_local $4)
      )
      (i64.store offset=8
       (get_local $14)
       (i64.add
        (get_local $18)
        (i64.const 1)
       )
      )
      (i64.store
       (get_local $14)
       (i64.const 0)
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 704)
      )
      (drop
       (call $memcpy
        (get_local $24)
        (get_local $14)
        (i32.const 8)
       )
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 704)
      )
      (drop
       (call $memcpy
        (i32.or
         (get_local $24)
         (i32.const 8)
        )
        (i32.add
         (get_local $14)
         (i32.const 8)
        )
        (i32.const 8)
       )
      )
      (i32.store offset=20
       (get_local $14)
       (tee_local $15
        (call $db_store_i64
         (i64.load
          (get_local $12)
         )
         (i64.const -3020626370892922880)
         (get_local $7)
         (tee_local $8
          (i64.load
           (get_local $14)
          )
         )
         (get_local $24)
         (i32.const 16)
        )
       )
      )
      (block $label$56
       (br_if $label$56
        (i64.lt_u
         (get_local $8)
         (i64.load
          (tee_local $6
           (i32.add
            (get_local $0)
            (i32.const 184)
           )
          )
         )
        )
       )
       (i64.store
        (get_local $6)
        (select
         (i64.const -2)
         (i64.add
          (get_local $8)
          (i64.const 1)
         )
         (i64.gt_u
          (get_local $8)
          (i64.const -3)
         )
        )
       )
      )
      (i32.store offset=56
       (get_local $24)
       (get_local $14)
      )
      (i64.store
       (get_local $24)
       (tee_local $8
        (i64.load
         (get_local $14)
        )
       )
      )
      (i32.store offset=52
       (get_local $24)
       (get_local $15)
      )
      (br_if $label$42
       (i32.ge_u
        (tee_local $6
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $0)
            (i32.const 196)
           )
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $0)
          (i32.const 200)
         )
        )
       )
      )
      (i64.store offset=8
       (get_local $6)
       (get_local $8)
      )
      (i32.store offset=16
       (get_local $6)
       (get_local $15)
      )
      (i32.store offset=56
       (get_local $24)
       (i32.const 0)
      )
      (i32.store
       (get_local $6)
       (get_local $14)
      )
      (i32.store
       (get_local $5)
       (i32.add
        (get_local $6)
        (i32.const 24)
       )
      )
      (br $label$41)
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 720)
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=16
        (get_local $17)
       )
       (get_local $4)
      )
      (i32.const 768)
     )
     (call $eosio_assert
      (i64.eq
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 168)
        )
       )
       (call $current_receiver)
      )
      (i32.const 816)
     )
     (i64.store offset=8
      (get_local $17)
      (i64.add
       (get_local $18)
       (i64.const 1)
      )
     )
     (set_local $8
      (i64.load
       (get_local $17)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 880)
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 704)
     )
     (drop
      (call $memcpy
       (get_local $24)
       (get_local $17)
       (i32.const 8)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 704)
     )
     (drop
      (call $memcpy
       (i32.or
        (get_local $24)
        (i32.const 8)
       )
       (i32.add
        (get_local $17)
        (i32.const 8)
       )
       (i32.const 8)
      )
     )
     (call $db_update_i64
      (i32.load offset=20
       (get_local $17)
      )
      (i64.const 0)
      (get_local $24)
      (i32.const 16)
     )
     (br_if $label$16
      (i64.lt_u
       (get_local $8)
       (i64.load
        (tee_local $14
         (i32.add
          (get_local $0)
          (i32.const 184)
         )
        )
       )
      )
     )
     (i64.store
      (get_local $14)
      (select
       (i64.const -2)
       (i64.add
        (get_local $8)
        (i64.const 1)
       )
       (i64.gt_u
        (get_local $8)
        (i64.const -3)
       )
      )
     )
     (br $label$16)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15426117702816628736EN12cryptojinian9usedcoinsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 192)
     )
     (i32.add
      (get_local $24)
      (i32.const 56)
     )
     (get_local $24)
     (i32.add
      (get_local $24)
      (i32.const 52)
     )
    )
   )
   (set_local $14
    (i32.load offset=56
     (get_local $24)
    )
   )
   (i32.store offset=56
    (get_local $24)
    (i32.const 0)
   )
   (br_if $label$16
    (i32.eqz
     (get_local $14)
    )
   )
   (call $_ZdlPv
    (get_local $14)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $24)
    (i32.const 64)
   )
  )
  (get_local $23)
 )
 (func $_ZN12cryptojinian12newcoinbyposEyy (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (set_local $7
   (i64.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $5
   (i32.const 1168)
  )
  (set_local $4
   (i64.const 1)
  )
  (set_local $8
   (get_local $2)
  )
  (block $label$0
   (loop $label$1
    (set_local $8
     (i64.sub
      (get_local $8)
      (tee_local $3
       (i64.load
        (get_local $5)
       )
      )
     )
    )
    (br_if $label$0
     (i64.ge_u
      (tee_local $7
       (i64.add
        (get_local $3)
        (get_local $7)
       )
      )
      (get_local $2)
     )
    )
    (set_local $4
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 8)
     )
    )
    (br_if $label$1
     (i32.le_s
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.const 21)
     )
    )
   )
   (set_local $4
    (i64.const 0)
   )
   (set_local $8
    (i64.const 0)
   )
  )
  (call $_ZN12cryptojinian7setcoinEyyy
   (get_local $0)
   (get_local $1)
   (get_local $4)
   (get_local $8)
  )
  (drop
   (call $_ZN12cryptojinian12addcoincountEy
    (get_local $0)
    (get_local $4)
   )
  )
 )
 (func $_ZN12cryptojinian8exchangeENSt3__16vectorIyNS0_9allocatorIyEEEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i64)
  (local $23 i32)
  (local $24 i64)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $28
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 272)
    )
   )
  )
  (set_local $13
   (i32.load
    (get_local $1)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $27
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $25
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $26
    (i32.add
     (get_local $27)
     (i32.const -24)
    )
   )
   (set_local $14
    (i32.sub
     (i32.const 0)
     (get_local $25)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eqz
      (i64.load
       (i32.load
        (get_local $26)
       )
      )
     )
    )
    (set_local $27
     (get_local $26)
    )
    (set_local $26
     (tee_local $15
      (i32.add
       (get_local $26)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $15)
       (get_local $14)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $26
   (i32.sub
    (get_local $2)
    (get_local $13)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $27)
      (get_local $25)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=32
       (i32.load
        (i32.add
         (get_local $27)
         (i32.const -24)
        )
       )
      )
      (get_local $2)
     )
     (i32.const 576)
    )
    (br $label$2)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $15
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const 4980189539499769856)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=32
      (call $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl
       (get_local $2)
       (get_local $15)
      )
     )
     (get_local $2)
    )
    (i32.const 576)
   )
  )
  (set_local $10
   (i32.shr_s
    (get_local $26)
    (i32.const 3)
   )
  )
  (set_local $24
   (i64.const 0)
  )
  (block $label$4
   (br_if $label$4
    (i32.eq
     (i32.load
      (tee_local $21
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
     (tee_local $26
      (i32.load
       (get_local $1)
      )
     )
    )
   )
   (set_local $23
    (i32.add
     (get_local $0)
     (i32.const 112)
    )
   )
   (set_local $20
    (i32.add
     (get_local $0)
     (i32.const 116)
    )
   )
   (set_local $16
    (i32.add
     (get_local $0)
     (i32.const 96)
    )
   )
   (set_local $11
    (i32.add
     (get_local $0)
     (i32.const 88)
    )
   )
   (set_local $24
    (i64.const 0)
   )
   (set_local $25
    (i32.const 0)
   )
   (loop $label$5
    (set_local $12
     (i64.load
      (i32.add
       (get_local $26)
       (i32.shl
        (get_local $25)
        (i32.const 3)
       )
      )
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eq
       (tee_local $27
        (i32.load
         (get_local $20)
        )
       )
       (tee_local $13
        (i32.load
         (get_local $23)
        )
       )
      )
     )
     (set_local $26
      (i32.add
       (get_local $27)
       (i32.const -24)
      )
     )
     (set_local $14
      (i32.sub
       (i32.const 0)
       (get_local $13)
      )
     )
     (loop $label$7
      (br_if $label$6
       (i64.eq
        (i64.load
         (i32.load
          (get_local $26)
         )
        )
        (get_local $12)
       )
      )
      (set_local $27
       (get_local $26)
      )
      (set_local $26
       (tee_local $15
        (i32.add
         (get_local $26)
         (i32.const -24)
        )
       )
      )
      (br_if $label$7
       (i32.ne
        (i32.add
         (get_local $15)
         (get_local $14)
        )
        (i32.const -24)
       )
      )
     )
    )
    (block $label$8
     (block $label$9
      (br_if $label$9
       (i32.eq
        (get_local $27)
        (get_local $13)
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=32
         (tee_local $26
          (i32.load
           (i32.add
            (get_local $27)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $2)
       )
       (i32.const 576)
      )
      (br $label$8)
     )
     (set_local $26
      (i32.const 0)
     )
     (br_if $label$8
      (i32.lt_s
       (tee_local $15
        (call $db_find_i64
         (i64.load
          (get_local $11)
         )
         (i64.load
          (get_local $16)
         )
         (i64.const 4980189539499769856)
         (get_local $12)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=32
        (tee_local $26
         (call $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl
          (get_local $2)
          (get_local $15)
         )
        )
       )
       (get_local $2)
      )
      (i32.const 576)
     )
    )
    (call $require_auth
     (i64.load offset=8
      (get_local $26)
     )
    )
    (set_local $12
     (i64.load offset=16
      (get_local $26)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i64.eq
        (get_local $24)
        (i64.const 0)
       )
      )
      (call $eosio_assert
       (i64.eq
        (get_local $24)
        (get_local $12)
       )
       (i32.const 1344)
      )
      (br $label$10)
     )
     (set_local $22
      (i64.load
       (i32.add
        (get_local $26)
        (i32.const 8)
       )
      )
     )
     (set_local $24
      (get_local $12)
     )
    )
    (br_if $label$5
     (i32.lt_u
      (tee_local $25
       (i32.add
        (get_local $25)
        (i32.const 1)
       )
      )
      (i32.shr_s
       (i32.sub
        (i32.load
         (get_local $21)
        )
        (tee_local $26
         (i32.load
          (get_local $1)
         )
        )
       )
       (i32.const 3)
      )
     )
    )
   )
  )
  (set_local $12
   (i64.extend_u/i32
    (get_local $10)
   )
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (get_local $28)
   (get_local $26)
  )
  (i32.store offset=8
   (get_local $28)
   (tee_local $26
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=4
   (get_local $28)
   (get_local $26)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 20)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=12
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 16)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 32)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=24
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 28)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 50)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 44)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=36
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 40)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 20)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 56)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=48
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 50)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 52)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 68)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=60
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 64)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 80)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=72
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 20)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 76)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 92)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=84
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 88)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 64)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 104)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 64)
    )
   )
  )
  (i32.store offset=96
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=48
   (get_local $26)
   (i64.const 50)
  )
  (i64.store offset=56
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 100)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 116)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=108
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 112)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 128)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=120
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 124)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 1)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 1)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 2)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 10)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 140)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=132
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 136)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 5)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 50)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 152)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=144
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 148)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 5)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 50)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 164)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=156
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 160)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 5)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 5)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 50)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 176)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=168
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 172)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 10)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 50)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 188)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=180
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 184)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 10)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 10)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 20)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 50)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 100)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 200)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=192
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 196)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 48)
    )
   )
   (i64.const 50)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 50)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 100)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 200)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 500)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 212)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=204
   (get_local $28)
   (get_local $26)
  )
  (i64.store offset=40
   (get_local $26)
   (i64.const 1000)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 208)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 100)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 100)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 200)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 500)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 1000)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 224)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=216
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 220)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 500)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 500)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 1000)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 2000)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 5000)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 236)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=228
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 232)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 500)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 500)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 1000)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 2000)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 5000)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 248)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=240
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 244)
   )
   (get_local $15)
  )
  (i64.store
   (tee_local $26
    (call $_Znwj
     (i32.const 40)
    )
   )
   (i64.const 500)
  )
  (i64.store offset=8
   (get_local $26)
   (i64.const 500)
  )
  (i64.store offset=16
   (get_local $26)
   (i64.const 1000)
  )
  (i64.store offset=24
   (get_local $26)
   (i64.const 2000)
  )
  (i64.store offset=32
   (get_local $26)
   (i64.const 5000)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 260)
   )
   (tee_local $15
    (i32.add
     (get_local $26)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=252
   (get_local $28)
   (get_local $26)
  )
  (i32.store
   (i32.add
    (get_local $28)
    (i32.const 256)
   )
   (get_local $15)
  )
  (set_local $3
   (call $_Znwj
    (i32.const 264)
   )
  )
  (set_local $23
   (i32.const 0)
  )
  (block $label$12
   (loop $label$13
    (i64.store align=4
     (tee_local $26
      (i32.add
       (get_local $3)
       (get_local $23)
      )
     )
     (i64.const 0)
    )
    (i32.store
     (tee_local $25
      (i32.add
       (get_local $26)
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (tee_local $14
        (i32.shr_s
         (tee_local $27
          (i32.sub
           (i32.load
            (tee_local $13
             (i32.add
              (tee_local $15
               (i32.add
                (get_local $28)
                (get_local $23)
               )
              )
              (i32.const 4)
             )
            )
           )
           (i32.load
            (get_local $15)
           )
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$12
      (i32.ge_u
       (get_local $14)
       (i32.const 536870912)
      )
     )
     (i32.store
      (get_local $26)
      (tee_local $27
       (call $_Znwj
        (get_local $27)
       )
      )
     )
     (i32.store
      (tee_local $26
       (i32.add
        (get_local $26)
        (i32.const 4)
       )
      )
      (get_local $27)
     )
     (i32.store
      (get_local $25)
      (i32.add
       (get_local $27)
       (i32.shl
        (get_local $14)
        (i32.const 3)
       )
      )
     )
     (br_if $label$14
      (i32.lt_s
       (tee_local $15
        (i32.sub
         (i32.load
          (get_local $13)
         )
         (tee_local $14
          (i32.load
           (get_local $15)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $27)
       (get_local $14)
       (get_local $15)
      )
     )
     (i32.store
      (get_local $26)
      (i32.add
       (i32.load
        (get_local $26)
       )
       (get_local $15)
      )
     )
    )
    (br_if $label$13
     (i32.ne
      (tee_local $23
       (i32.add
        (get_local $23)
        (i32.const 12)
       )
      )
      (i32.const 264)
     )
    )
   )
   (set_local $26
    (i32.const 264)
   )
   (loop $label$15
    (block $label$16
     (br_if $label$16
      (i32.eqz
       (tee_local $15
        (i32.load
         (i32.add
          (tee_local $27
           (i32.add
            (get_local $28)
            (get_local $26)
           )
          )
          (i32.const -12)
         )
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $27)
       (i32.const -8)
      )
      (get_local $15)
     )
     (call $_ZdlPv
      (get_local $15)
     )
    )
    (br_if $label$15
     (tee_local $26
      (i32.add
       (get_local $26)
       (i32.const -12)
      )
     )
    )
   )
   (set_local $5
    (i64.div_u
     (get_local $24)
     (i64.const 100)
    )
   )
   (block $label$17
    (block $label$18
     (br_if $label$18
      (i32.eq
       (tee_local $15
        (i32.load offset=4
         (tee_local $6
          (i32.add
           (get_local $3)
           (i32.mul
            (i32.wrap/i64
             (tee_local $4
              (i64.rem_u
               (get_local $24)
               (i64.const 100)
              )
             )
            )
            (i32.const 12)
           )
          )
         )
        )
       )
       (tee_local $26
        (i32.load
         (get_local $6)
        )
       )
      )
     )
     (set_local $7
      (i32.add
       (get_local $6)
       (i32.const 4)
      )
     )
     (set_local $8
      (i64.mul
       (i64.load
        (i32.add
         (get_local $26)
         (i32.shl
          (i32.wrap/i64
           (get_local $5)
          )
          (i32.const 3)
         )
        )
       )
       (get_local $12)
      )
     )
     (set_local $11
      (i32.add
       (get_local $28)
       (i32.const 24)
      )
     )
     (set_local $10
      (i32.add
       (get_local $28)
       (i32.const 16)
      )
     )
     (set_local $9
      (i32.or
       (get_local $28)
       (i32.const 8)
      )
     )
     (set_local $16
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
     (set_local $17
      (i32.add
       (get_local $0)
       (i32.const 112)
      )
     )
     (set_local $18
      (i32.add
       (get_local $0)
       (i32.const 116)
      )
     )
     (set_local $19
      (i32.add
       (get_local $0)
       (i32.const 96)
      )
     )
     (set_local $20
      (i32.add
       (get_local $0)
       (i32.const 88)
      )
     )
     (set_local $21
      (i32.add
       (get_local $0)
       (i32.const 104)
      )
     )
     (set_local $24
      (i64.const 0)
     )
     (loop $label$19
      (block $label$20
       (br_if $label$20
        (i64.le_u
         (get_local $24)
         (get_local $5)
        )
       )
       (br_if $label$20
        (i64.ne
         (get_local $8)
         (i64.load
          (i32.add
           (get_local $26)
           (i32.shl
            (i32.wrap/i64
             (get_local $24)
            )
            (i32.const 3)
           )
          )
         )
        )
       )
       (block $label$21
        (br_if $label$21
         (i32.eq
          (i32.load
           (get_local $16)
          )
          (tee_local $26
           (i32.load
            (get_local $1)
           )
          )
         )
        )
        (set_local $25
         (i32.const 0)
        )
        (loop $label$22
         (set_local $12
          (i64.load
           (i32.add
            (get_local $26)
            (i32.shl
             (get_local $25)
             (i32.const 3)
            )
           )
          )
         )
         (block $label$23
          (br_if $label$23
           (i32.eq
            (tee_local $27
             (i32.load
              (get_local $18)
             )
            )
            (tee_local $13
             (i32.load
              (get_local $17)
             )
            )
           )
          )
          (set_local $26
           (i32.add
            (get_local $27)
            (i32.const -24)
           )
          )
          (set_local $14
           (i32.sub
            (i32.const 0)
            (get_local $13)
           )
          )
          (loop $label$24
           (br_if $label$23
            (i64.eq
             (i64.load
              (i32.load
               (get_local $26)
              )
             )
             (get_local $12)
            )
           )
           (set_local $27
            (get_local $26)
           )
           (set_local $26
            (tee_local $15
             (i32.add
              (get_local $26)
              (i32.const -24)
             )
            )
           )
           (br_if $label$24
            (i32.ne
             (i32.add
              (get_local $15)
              (get_local $14)
             )
             (i32.const -24)
            )
           )
          )
         )
         (block $label$25
          (block $label$26
           (br_if $label$26
            (i32.eq
             (get_local $27)
             (get_local $13)
            )
           )
           (call $eosio_assert
            (i32.eq
             (i32.load offset=32
              (tee_local $26
               (i32.load
                (i32.add
                 (get_local $27)
                 (i32.const -24)
                )
               )
              )
             )
             (get_local $2)
            )
            (i32.const 576)
           )
           (br $label$25)
          )
          (set_local $26
           (i32.const 0)
          )
          (br_if $label$25
           (i32.lt_s
            (tee_local $15
             (call $db_find_i64
              (i64.load
               (get_local $20)
              )
              (i64.load
               (get_local $19)
              )
              (i64.const 4980189539499769856)
              (get_local $12)
             )
            )
            (i32.const 0)
           )
          )
          (call $eosio_assert
           (i32.eq
            (i32.load offset=32
             (tee_local $26
              (call $_ZNK5eosio11multi_indexILy4980189539499769856EN12cryptojinian4coinEJEE31load_object_by_primary_iteratorEl
               (get_local $2)
               (get_local $15)
              )
             )
            )
            (get_local $2)
           )
           (i32.const 576)
          )
         )
         (call $eosio_assert
          (i32.ne
           (get_local $26)
           (i32.const 0)
          )
          (i32.const 720)
         )
         (call $eosio_assert
          (i32.eq
           (i32.load offset=32
            (get_local $26)
           )
           (get_local $2)
          )
          (i32.const 768)
         )
         (call $eosio_assert
          (i64.eq
           (i64.load
            (get_local $20)
           )
           (call $current_receiver)
          )
          (i32.const 816)
         )
         (i64.store offset=8
          (get_local $26)
          (i64.load
           (get_local $0)
          )
         )
         (set_local $12
          (i64.load
           (get_local $26)
          )
         )
         (call $eosio_assert
          (i32.const 1)
          (i32.const 880)
         )
         (call $eosio_assert
          (i32.const 1)
          (i32.const 704)
         )
         (drop
          (call $memcpy
           (get_local $28)
           (get_local $26)
           (i32.const 8)
          )
         )
         (call $eosio_assert
          (i32.const 1)
          (i32.const 704)
         )
         (drop
          (call $memcpy
           (get_local $9)
           (i32.add
            (get_local $26)
            (i32.const 8)
           )
           (i32.const 8)
          )
         )
         (call $eosio_assert
          (i32.const 1)
          (i32.const 704)
         )
         (drop
          (call $memcpy
           (get_local $10)
           (i32.add
            (get_local $26)
            (i32.const 16)
           )
           (i32.const 8)
          )
         )
         (call $eosio_assert
          (i32.const 1)
          (i32.const 704)
         )
         (drop
          (call $memcpy
           (get_local $11)
           (i32.add
            (get_local $26)
            (i32.const 24)
           )
           (i32.const 8)
          )
         )
         (call $db_update_i64
          (i32.load offset=36
           (get_local $26)
          )
          (i64.const 0)
          (get_local $28)
          (i32.const 32)
         )
         (block $label$27
          (br_if $label$27
           (i64.lt_u
            (get_local $12)
            (i64.load
             (get_local $21)
            )
           )
          )
          (i64.store
           (get_local $21)
           (select
            (i64.const -2)
            (i64.add
             (get_local $12)
             (i64.const 1)
            )
            (i64.gt_u
             (get_local $12)
             (i64.const -3)
            )
           )
          )
         )
         (br_if $label$22
          (i32.lt_u
           (tee_local $25
            (i32.add
             (get_local $25)
             (i32.const 1)
            )
           )
           (i32.shr_s
            (i32.sub
             (i32.load
              (get_local $16)
             )
             (tee_local $26
              (i32.load
               (get_local $1)
              )
             )
            )
            (i32.const 3)
           )
          )
         )
        )
       )
       (call $_ZN12cryptojinian7setcoinEyyy
        (get_local $0)
        (get_local $22)
        (tee_local $12
         (i64.add
          (i64.mul
           (get_local $24)
           (i64.const 100)
          )
          (get_local $4)
         )
        )
        (call $_ZN12cryptojinian12addcoincountEy
         (get_local $0)
         (get_local $12)
        )
       )
       (set_local $26
        (i32.load
         (get_local $6)
        )
       )
       (set_local $15
        (i32.load
         (get_local $7)
        )
       )
      )
      (br_if $label$19
       (i32.lt_u
        (i32.wrap/i64
         (tee_local $24
          (i64.add
           (get_local $24)
           (i64.const 1)
          )
         )
        )
        (i32.shr_s
         (i32.sub
          (get_local $15)
          (get_local $26)
         )
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$17
      (i32.eqz
       (get_local $3)
      )
     )
    )
    (block $label$28
     (br_if $label$28
      (i32.eqz
       (get_local $23)
      )
     )
     (loop $label$29
      (block $label$30
       (br_if $label$30
        (i32.eqz
         (tee_local $26
          (i32.load
           (i32.add
            (tee_local $15
             (i32.add
              (get_local $3)
              (get_local $23)
             )
            )
            (i32.const -12)
           )
          )
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $15)
         (i32.const -8)
        )
        (get_local $26)
       )
       (call $_ZdlPv
        (get_local $26)
       )
      )
      (br_if $label$29
       (tee_local $23
        (i32.add
         (get_local $23)
         (i32.const -12)
        )
       )
      )
     )
    )
    (call $_ZdlPv
     (get_local $3)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $28)
     (i32.const 272)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $26)
  )
  (unreachable)
 )
 (func $_ZN12cryptojinian10onTransferEyyN5eosio5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (block $label$0
   (br_if $label$0
    (i64.ne
     (i64.load
      (get_local $0)
     )
     (get_local $2)
    )
   )
   (call $require_auth
    (get_local $1)
   )
   (set_local $5
    (i32.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (i64.add
       (tee_local $1
        (i64.load
         (get_local $3)
        )
       )
       (i64.const 4611686018427387903)
      )
      (i64.const 9223372036854775806)
     )
    )
    (set_local $2
     (i64.shr_u
      (i64.load offset=8
       (get_local $3)
      )
      (i64.const 8)
     )
    )
    (set_local $0
     (i32.const 0)
    )
    (block $label$2
     (loop $label$3
      (br_if $label$2
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $2)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$4
       (br_if $label$4
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$5
        (br_if $label$2
         (i64.ne
          (i64.and
           (tee_local $2
            (i64.shr_u
             (get_local $2)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$5
         (i32.lt_s
          (tee_local $0
           (i32.add
            (get_local $0)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $5
       (i32.const 1)
      )
      (br_if $label$3
       (i32.lt_s
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$1)
     )
    )
    (set_local $5
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $5)
    (i32.const 448)
   )
   (call $eosio_assert
    (i64.gt_s
     (get_local $1)
     (i64.const 0)
    )
    (i32.const 480)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 1360)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 9760)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=9846
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=9848
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=9846
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=9848
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=9848
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=9848
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=9846
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=9846
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=9848
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=9848
        (i32.const 0)
       )
      )
     )
     (i32.store offset=9848
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=9744
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 9552)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 9552)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=9852
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (call $strlen
    (get_local $1)
   )
  )
  (set_local $5
   (i32.const 10)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (tee_local $3
       (i32.load8_u
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (i32.const -2)
     )
     (i32.const -1)
    )
   )
  )
  (set_local $4
   (i32.and
    (get_local $3)
    (i32.const 1)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.le_u
          (get_local $2)
          (get_local $5)
         )
        )
        (br_if $label$5
         (get_local $4)
        )
        (set_local $3
         (i32.shr_u
          (i32.and
           (get_local $3)
           (i32.const 254)
          )
          (i32.const 1)
         )
        )
        (br $label$4)
       )
       (br_if $label$3
        (get_local $4)
       )
       (set_local $5
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (br_if $label$2
        (get_local $2)
       )
       (br $label$1)
      )
      (set_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
      (get_local $0)
      (get_local $5)
      (i32.sub
       (get_local $2)
       (get_local $5)
      )
      (get_local $3)
      (i32.const 0)
      (get_local $3)
      (get_local $2)
      (get_local $1)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $5
     (i32.load offset=8
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.eqz
      (get_local $2)
     )
    )
   )
   (drop
    (call $memmove
     (get_local $5)
     (get_local $1)
     (get_local $2)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $5)
    (get_local $2)
   )
   (i32.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.and
     (i32.load8_u
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (i32.store8
    (get_local $0)
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (i32.sub
      (i32.const -18)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $9
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (set_local $9
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (set_local $10
    (i32.const -17)
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_u
      (get_local $1)
      (i32.const 2147483622)
     )
    )
    (set_local $10
     (i32.const 11)
    )
    (br_if $label$3
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $8
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $10
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $_Znwj
     (get_local $10)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $9)
      (get_local $4)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $6)
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $2)
       (get_local $4)
      )
      (get_local $7)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $7
       (i32.sub
        (tee_local $3
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $9)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $7)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $_ZdlPv
     (get_local $9)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $10)
     (i32.const 1)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (tee_local $4
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $2)
     (get_local $4)
    )
    (i32.const 0)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i32.eqz
          (tee_local $2
           (i32.and
            (tee_local $4
             (i32.load8_u
              (get_local $0)
             )
            )
            (i32.const 1)
           )
          )
         )
        )
        (br_if $label$4
         (i32.eq
          (tee_local $4
           (i32.load offset=4
            (get_local $0)
           )
          )
          (tee_local $3
           (i32.add
            (i32.and
             (i32.load
              (get_local $0)
             )
             (i32.const -2)
            )
            (i32.const -1)
           )
          )
         )
        )
        (br $label$3)
       )
       (set_local $3
        (i32.const 10)
       )
       (br_if $label$3
        (i32.ne
         (tee_local $4
          (i32.shr_u
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 10)
        )
       )
      )
      (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj
       (get_local $0)
       (get_local $3)
       (i32.const 1)
       (get_local $3)
       (get_local $3)
       (i32.const 0)
       (i32.const 0)
      )
      (br_if $label$2
       (i32.and
        (i32.load8_u
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.eqz
       (get_local $2)
      )
     )
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.load offset=8
      (get_local $0)
     )
    )
    (br $label$0)
   )
   (i32.store8
    (get_local $0)
    (i32.add
     (i32.shl
      (get_local $4)
      (i32.const 1)
     )
     (i32.const 2)
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
  )
  (i32.store8 offset=1
   (tee_local $0
    (i32.add
     (get_local $0)
     (get_local $4)
    )
   )
   (i32.const 0)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (i32.sub
      (i32.const -17)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $8
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (set_local $8
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (set_local $9
    (i32.const -17)
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_u
      (get_local $1)
      (i32.const 2147483622)
     )
    )
    (set_local $9
     (i32.const 11)
    )
    (br_if $label$3
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $7
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $7)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $9
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $_Znwj
     (get_local $9)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $8)
      (get_local $4)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $3
       (i32.sub
        (i32.sub
         (get_local $3)
         (get_local $5)
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $8)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $3)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $9)
     (i32.const 1)
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (tee_local $5
      (i32.and
       (tee_local $6
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $6
     (i32.shr_u
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $6
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $4)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i32.lt_u
     (get_local $6)
     (get_local $1)
    )
   )
   (set_local $6
    (select
     (tee_local $6
      (i32.sub
       (get_local $6)
       (get_local $1)
      )
     )
     (get_local $2)
     (i32.lt_u
      (get_local $6)
      (get_local $2)
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (get_local $5)
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$3)
    )
    (set_local $0
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $2
       (select
        (get_local $4)
        (get_local $6)
        (tee_local $5
         (i32.gt_u
          (get_local $6)
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $label$5
     (i32.eqz
      (tee_local $1
       (call $memcmp
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (get_local $3)
        (get_local $2)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (return
    (select
     (i32.const -1)
     (get_local $5)
     (i32.lt_u
      (get_local $6)
      (get_local $4)
     )
    )
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
