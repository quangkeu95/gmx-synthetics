// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

library Keys {
    bytes32 public constant WETH = keccak256("WETH");
    bytes32 public constant NONCE = keccak256("NONCE");

    bytes32 public constant CREATE_DEPOSIT_FEATURE = keccak256("CREATE_DEPOSIT_FEATURE");
    bytes32 public constant EXECUTE_DEPOSIT_FEATURE = keccak256("EXECUTE_DEPOSIT_FEATURE");

    bytes32 public constant CREATE_WITHDRAWAL_FEATURE = keccak256("CREATE_WITHDRAWAL_FEATURE");
    bytes32 public constant EXECUTE_WITHDRAWAL_FEATURE = keccak256("EXECUTE_WITHDRAWAL_FEATURE");

    bytes32 public constant CREATE_ORDER_FEATURE = keccak256("CREATE_ORDER_FEATURE");
    bytes32 public constant EXECUTE_ORDER_FEATURE = keccak256("EXECUTE_ORDER_FEATURE");
    bytes32 public constant UPDATE_ORDER_FEATURE = keccak256("UPDATE_ORDER_FEATURE");
    bytes32 public constant CANCEL_ORDER_FEATURE = keccak256("CANCEL_ORDER_FEATURE");

    // the minimum required oracle signers for an observation
    bytes32 public constant MIN_ORACLE_SIGNERS = keccak256("MIN_ORACLE_SIGNERS");
    // the minimum block confirmations before blockhash can be excluded for oracle signature validation
    bytes32 public constant MIN_ORACLE_BLOCK_CONFIRMATIONS = keccak256("MIN_ORACLE_BLOCK_CONFIRMATIONS");
    // the maximum block age usable for oracle prices
    bytes32 public constant MAX_ORACLE_BLOCK_AGE = keccak256("MAX_ORACLE_BLOCK_AGE");
    // the percentage amount of fees to be received for deposits
    bytes32 public constant FEE_RECEIVER_DEPOSIT_FACTOR = keccak256("FEE_RECEIVER_DEPOSIT_FACTOR");
    // the percentage amount of fees to be received for withdrawals
    bytes32 public constant FEE_RECEIVER_WITHDRAWAL_FACTOR = keccak256("FEE_RECEIVER_WITHDRAWAL_FACTOR");
    // the percentage amount of fees to be received for swaps
    bytes32 public constant FEE_RECEIVER_SWAP_FACTOR = keccak256("FEE_RECEIVER_SWAP_FACTOR");
    // the percentage amount of fees to be received for positions
    bytes32 public constant FEE_RECEIVER_POSITION_FACTOR = keccak256("FEE_RECEIVER_POSITION_FACTOR");

    bytes32 public constant ESTIMATED_FEE_BASE_GAS_LIMIT = keccak256("ESTIMATED_FEE_BASE_GAS_LIMIT");
    bytes32 public constant ESTIMATED_FEE_MULTIPLIER_FACTOR = keccak256("ESTIMATED_FEE_MULTIPLIER_FACTOR");

    bytes32 public constant EXECUTION_FEE_BASE_GAS_LIMIT = keccak256("EXECUTION_FEE_BASE_GAS_LIMIT");
    bytes32 public constant EXECUTION_FEE_MULTIPLIER_FACTOR = keccak256("EXECUTION_FEE_MULTIPLIER_FACTOR");

    bytes32 public constant DEPOSIT_GAS_LIMIT = keccak256("DEPOSIT_GAS_LIMIT");
    bytes32 public constant WITHDRAWAL_GAS_LIMIT = keccak256("WITHDRAWAL_GAS_LIMIT");
    bytes32 public constant SINGLE_SWAP_GAS_LIMIT = keccak256("SINGLE_SWAP_GAS_LIMIT");
    bytes32 public constant INCREASE_ORDER_GAS_LIMIT = keccak256("INCREASE_ORDER_GAS_LIMIT");
    bytes32 public constant DECREASE_ORDER_GAS_LIMIT = keccak256("DECREASE_ORDER_GAS_LIMIT");
    bytes32 public constant SWAP_ORDER_GAS_LIMIT = keccak256("SWAP_ORDER_GAS_LIMIT");
    bytes32 public constant CANCELLATION_GAS_LIMIT = keccak256("CANCELLATION_GAS_LIMIT");

    bytes32 public constant MAX_LEVERAGE = keccak256("MAX_LEVERAGE");
    bytes32 public constant MIN_COLLATERAL_USD = keccak256("MIN_COLLATERAL_USD");

    string public constant POSITION_IMPACT_FACTOR = "POSITION_IMPACT_FACTOR";
    string public constant POSITION_IMPACT_EXPONENT_FACTOR = "POSITION_IMPACT_EXPONENT_FACTOR";
    string public constant POSITION_SPREAD_FACTOR = "POSITION_SPREAD_FACTOR";
    string public constant POSITION_FEE_FACTOR = "POSITION_FEE_FACTOR";
    string public constant SWAP_IMPACT_FACTOR = "SWAP_IMPACT_FACTOR";
    string public constant SWAP_IMPACT_EXPONENT_FACTOR = "SWAP_IMPACT_EXPONENT_FACTOR";
    string public constant SWAP_SPREAD_FACTOR = "SWAP_SPREAD_FACTOR";
    string public constant SWAP_FEE_FACTOR = "SWAP_FEE_FACTOR";
    string public constant ORACLE_PRECISION = "ORACLE_PRECISION";
    string public constant ORACLE_TYPE = "ORACLE_TYPE";
    string public constant OPEN_INTEREST = "OPEN_INTEREST";
    string public constant OPEN_INTEREST_IN_TOKENS = "OPEN_INTEREST_IN_TOKENS";
    string public constant COLLATERAL_SUM = "COLLATERAL_SUM";
    string public constant POOL_AMOUNT = "POOL_AMOUNT";
    string public constant POSITION_IMPACT_POOL_AMOUNT = "POSITION_IMPACT_POOL_AMOUNT";
    string public constant SWAP_IMPACT_POOL_AMOUNT = "SWAP_IMPACT_POOL_AMOUNT";
    string public constant PRICE_FEED = "PRICE_FEED";
    string public constant PRICE_FEED_PRECISION = "PRICE_FEED_PRECISION";
    string public constant STABLE_PRICE = "STABLE_PRICE";
    string public constant RESERVE_FACTOR = "RESERVE_FACTOR";
    string public constant FUNDING_FACTOR = "FUNDING_FACTOR";
    string public constant CUMULATIVE_FUNDING_FACTOR = "CUMULATIVE_FUNDING_FACTOR";
    string public constant CUMULATIVE_FUNDING_FACTOR_UPDATED_AT = "CUMULATIVE_FUNDING_FACTOR_UPDATED_AT";
    string public constant BORROWING_FACTOR = "BORROWING_FACTOR";
    string public constant CUMULATIVE_BORROWING_FACTOR = "CUMULATIVE_BORROWING_FACTOR";
    string public constant CUMULATIVE_BORROWING_FACTOR_UPDATED_AT = "CUMULATIVE_BORROWING_FACTOR_UPDATED_AT";
    string public constant TOTAL_BORROWING = "TOTAL_BORROWING";

    string public constant ORACLE_ERROR = "ORACLE_ERROR";
    bytes32 public constant ORACLE_ERROR_KEY = keccak256(abi.encode(ORACLE_ERROR));

    string public constant EMPTY_POSITION_ERROR = "EMPTY_POSITION_ERROR";
    bytes32 public constant EMPTY_POSITION_ERROR_KEY = keccak256(abi.encode(EMPTY_POSITION_ERROR));

    string public constant FROZEN_ORDER_ERROR = "FROZEN_ORDER_ERROR";
    bytes32 public constant FROZEN_ORDER_ERROR_KEY = keccak256(abi.encode(FROZEN_ORDER_ERROR));

    function depositGasLimitKey(bool singleToken) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DEPOSIT_GAS_LIMIT,
            singleToken
        ));
    }

    function withdrawalGasLimitKey(bool singleToken) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            WITHDRAWAL_GAS_LIMIT,
            singleToken
        ));
    }

    function singleSwapGasLimitKey() internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SINGLE_SWAP_GAS_LIMIT
        ));
    }

    function increaseOrderGasLimitKey() internal pure returns (bytes32) {
        return keccak256(abi.encode(
            INCREASE_ORDER_GAS_LIMIT
        ));
    }

    function decreaseOrderGasLimitKey() internal pure returns (bytes32) {
        return keccak256(abi.encode(
            DECREASE_ORDER_GAS_LIMIT
        ));
    }

    function swapOrderGasLimitKey() internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_ORDER_GAS_LIMIT
        ));
    }

    function createDepositFeatureKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_DEPOSIT_FEATURE,
            module
        ));
    }

    function executeDepositFeatureKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_DEPOSIT_FEATURE,
            module
        ));
    }

    function createWithdrawalFeatureKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_WITHDRAWAL_FEATURE,
            module
        ));
    }

    function executeWithdrawalFeatureKey(address module) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_WITHDRAWAL_FEATURE,
            module
        ));
    }

    function createOrderFeatureKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CREATE_ORDER_FEATURE,
            module,
            orderType
        ));
    }

    function executeOrderFeatureKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            EXECUTE_ORDER_FEATURE,
            module,
            orderType
        ));
    }

    function updateOrderFeatureKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            UPDATE_ORDER_FEATURE,
            module,
            orderType
        ));
    }

    function cancelOrderFeatureKey(address module, uint256 orderType) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CANCEL_ORDER_FEATURE,
            module,
            orderType
        ));
    }

    function positionImpactFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_FACTOR,
            market,
            isPositive
        ));
   }

    function positionImpactExponentFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_EXPONENT_FACTOR,
            market
        ));
}

    function positionSpreadFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_SPREAD_FACTOR,
            market
        ));
    }

    function positionFeeFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_FEE_FACTOR,
            market
        ));
    }

    function swapImpactFactorKey(address market, bool isPositive) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_FACTOR,
            market,
            isPositive
        ));
    }

    function swapImpactExponentFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_EXPONENT_FACTOR,
            market
        ));
    }


    function swapSpreadFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_SPREAD_FACTOR,
            market
        ));
    }

    function swapFeeFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_FEE_FACTOR,
            market
        ));
    }

    function oraclePrecisionKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_PRECISION,
            token
        ));
    }

    function oracleTypeKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            ORACLE_TYPE,
            token
        ));
    }

    // market open interest
    function openInterestKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPEN_INTEREST,
            market,
            isLong
        ));
    }

    // market open interest in tokens
    function openInterestInTokensKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            OPEN_INTEREST_IN_TOKENS,
            market,
            isLong
        ));
    }

    // total collateral of positions
    function collateralSumKey(address market, address collateralToken, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            COLLATERAL_SUM,
            market,
            collateralToken,
            isLong
        ));
    }

    // amount of tokens in market pool
    function poolAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POOL_AMOUNT,
            market,
            token
        ));
    }

    // amount of tokens in position impact pool
    function positionImpactPoolAmountKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            POSITION_IMPACT_POOL_AMOUNT,
            market
        ));
    }

    // amount of tokens in swap impact pool
    function swapImpactPoolAmountKey(address market, address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            SWAP_IMPACT_POOL_AMOUNT,
            market,
            token
        ));
    }

    function reserveFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            RESERVE_FACTOR,
            market,
            isLong
        ));
    }

    function fundingFactorKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            FUNDING_FACTOR,
            market
        ));
    }

    function cumulativeFundingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_FUNDING_FACTOR,
            market,
            isLong
        ));
    }

    function cumulativeFundingFactorUpdatedAtKey(address market) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_FUNDING_FACTOR_UPDATED_AT,
            market
        ));
    }

    function borrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    function cumulativeBorrowingFactorKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_BORROWING_FACTOR,
            market,
            isLong
        ));
    }

    function cumulativeBorrowingFactorUpdatedAtKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            CUMULATIVE_BORROWING_FACTOR_UPDATED_AT,
            market,
            isLong
        ));
    }

    function totalBorrowingKey(address market, bool isLong) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            TOTAL_BORROWING,
            market,
            isLong
        ));
    }

    function priceFeedKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRICE_FEED,
            token
        ));
    }

    function priceFeedPrecisionKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            PRICE_FEED_PRECISION,
            token
        ));
    }

    function stablePriceKey(address token) internal pure returns (bytes32) {
        return keccak256(abi.encode(
            STABLE_PRICE,
            token
        ));
    }
}
