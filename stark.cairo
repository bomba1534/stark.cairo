#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;
//didn't work

    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}
// did it

    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
//checked
