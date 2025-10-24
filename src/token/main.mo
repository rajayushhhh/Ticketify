import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap";

persistent actor Token {

    stable var owner : Principal = Principal.fromText("i647v-rtmuu-wp6b5-hwsc2-tdq3n-6ejdr-5nnh4-mk4x7-6i2ab-pxenn-aqe");
    stable var totalSupply : Nat = 1000000000;
    stable var symbol : Text = "DANG";

    transient var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

    balances.put(owner, totalSupply);

    public query func balanceOf (who: Principal) : async Nat {

        let balance : Nat = switch (balances.get(who)){
            case null 0;
            case (?result) result;
        };
        return balance;
    };



};
