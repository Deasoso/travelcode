/**
 *  @dev yukiexe
 */
#pragma once

#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/transaction.hpp>

using namespace eosio ;

namespace unit_test {

#include <iostream>
#include <vector>
#include <string>

using namespace std;

vector<uint32_t> merge_seed(const uint8_t s[]) {
    uint32_t hash ;
    // uint16_t s16[4] ;
    vector<uint32_t> v_hash ;
    for (uint8_t i = 0 ; i < 32 ; i += 4 ) {
        hash = ( s[i] << 24 ) | ( s[i+1] << 16 ) | ( s[i+2] << 8 ) | s[i+3] ;
        // hash = ( s16[0] << 48 ) | ( s16[1] << 32 ) | ( s16[2] << 16 )  | s16[3] ;
        v_hash.push_back( hash ) ;
    }
    return v_hash;
}

int merge_seed_test()
{                        
    uint8_t hash[32];// f2 35 66 7e a7 c6 3e 96 b6 72 8b 95 bd 88 79bc1a6c7a297212df53e8c8a4b0c9bfc731
    
    hash[0] = 0xf2 ;
    hash[1] = 0x35 ;
    hash[2] = 0x66 ;
    hash[3] = 0x7e ;
    
    hash[4] = 0xa7 ;
    hash[5] = 0xc6 ;
    hash[6] = 0x3e ;
    hash[7] = 0x96 ;
    
    hash[8] = 0xb6 ;
    hash[9] = 0x72 ;
    hash[10] = 0x8b ;
    hash[11] = 0x95 ;
    
    hash[12] = 0xbd ;
    hash[13] = 0x88 ;
    hash[14] = 0x79 ;
    hash[15] = 0xbc ;
    
    
    auto seed = merge_seed( hash );

    for ( int i = 0 ; i < seed.size(); ++i )
    cout << seed[i] << endl ;

    return 0;
}

void test2(const name &tester)
{
    uint64_t type = 111, number = 111;
    // SEND_INLINE_ACTION( *this, setcoin, { _self, "active"_n }, { tester, type, number} );
    /*
    for (uint64_t yy = 0; yy < _coinvalues.size(); yy++)
    {
        for (uint64_t xx = 0; xx < _coinvalues[0].size(); xx++)
        {
            type = (xx * 100 + (0 + 1));
            number = 111;
            SEND_INLINE_ACTION(*this, setcoin, {_self, "active"_n}, {tester, type, number});
            if (xx % 2 == 1)
                setcoin(tester, (xx * 100 + (yy + 1)), 222);
        }
    }*/
}

} // namespace kyubeytool
