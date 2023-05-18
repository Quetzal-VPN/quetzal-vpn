interface VPNUser {
  id: number;
  username: string;
  isEnabled: boolean;
  address?: string;
  timestamp?: Date;
}

interface VPNUserCollection {
  amount: number;
  amountDisabled: number;
  amountEnabled: number;
  vpnUsers: VPNUser[];
}

export type {VPNUser, VPNUserCollection}