#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;
//new mod and idea

    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}
// way of comments
//what am i doing here , people?
    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
