#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}
//30.11.2023

    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
//checked
