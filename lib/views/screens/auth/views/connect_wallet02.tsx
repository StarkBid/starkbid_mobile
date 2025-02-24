import React from "react";
export default function ConnectWallet() {
    const wallets = [
      { name: "Argent", icon: "/argent.png" },
      { name: "Metamask", icon: "/metamask.png" },
      { name: "Braavos", icon: "/braavos.jpg" },
    ];
  
    return (
      <div
        className="relative w-[375px] h-[640px] mx-auto overflow-hidden rounded-xl"
      
      >
         <div className="absolute inset-0">
        <img
          src="/img/nft.png"
          alt="NFT Background"
          className="w-full h-full object-cover "
        />
      </div>
        {/* Black Overlay */}
        <div className=" absolute inset-0 bg-black bg-opacity-60 backdrop-blur-sm"></div>
  
        {/* Connect Wallet Section */}
        <div className="absolute bottom-0 left-0 right-0 p-6 bg-gray-950 text-white max-w-sm mx-auto rounded-t-2xl shadow-lg">
          {/* Header */}
          <div className="flex justify-between items-center mb-4">
            <h2 className="text-lg font-semibold">Connect Wallet</h2>
            <button className="text-gray-400 hover:text-white text-xl">✕</button>
          </div>
  
          {/* Wallet List */}
          <div className="space-y-">
            {wallets.map((wallet, index) => (
              <div
                key={index}
                className="flex items-center space-x-3  p-3 rounded-lg  cursor-pointer"
              >
                <img src={wallet.icon} alt={wallet.name} className="w-[50px] rounded-[12px] h-[50px]" />
                <span className="text-lg">{wallet.name}</span>
              </div>
            ))}
          </div>
        </div>
      </div>
    );
  }
  