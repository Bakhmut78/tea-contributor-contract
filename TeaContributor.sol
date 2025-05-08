// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Tea Protocol Contributor Registry
/// @notice Simulates open-source contribution registration for Tea Protocol
contract TeaContributor {
    struct Contributor {
        string githubUsername;
        string contributionHash;
    }

    mapping(address => Contributor) public contributors;

    /// @notice Register contribution with GitHub username and hash of the work
    function registerContribution(string memory githubUsername, string memory contributionHash) public {
        contributors[msg.sender] = Contributor(githubUsername, contributionHash);
    }

    /// @notice View a contributor by address
    function getContributor(address contributorAddr) public view returns (string memory, string memory) {
        Contributor memory c = contributors[contributorAddr];
        return (c.githubUsername, c.contributionHash);
    }
}
