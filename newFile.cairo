#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

//new file was named adter previous new File, his father!
    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
