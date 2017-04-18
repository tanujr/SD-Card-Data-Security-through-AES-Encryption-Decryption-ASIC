// $Id: $
// File name:   mul13.sv
// Created:     4/4/2017
// Author:      Caleb Withers
// Lab Section: 337-02
// Version:     1.0  Initial Design Entry
// Description: Multiply 13

module mul13(
	input wire [7:0]mul13_in,
	output reg [7:0]mul13_out
);

always_comb begin : mul_case
	mul13_out=8'h00;

	case(mul13_in)
		8'h00: mul13_out=8'h00;
		8'h01: mul13_out=8'h0d;
		8'h02: mul13_out=8'h1a;
		8'h03: mul13_out=8'h17;
		8'h04: mul13_out=8'h34;
		8'h05: mul13_out=8'h39;
		8'h06: mul13_out=8'h2e;
		8'h07: mul13_out=8'h23;
		8'h08: mul13_out=8'h68;
		8'h09: mul13_out=8'h65;
		8'h0a: mul13_out=8'h72;
		8'h0b: mul13_out=8'h7f;
		8'h0c: mul13_out=8'h5c;
		8'h0d: mul13_out=8'h51;
		8'h0e: mul13_out=8'h46;
		8'h0f: mul13_out=8'h4b;
		8'h10: mul13_out=8'hd0;
		8'h11: mul13_out=8'hdd;
		8'h12: mul13_out=8'hca;
		8'h13: mul13_out=8'hc7;
		8'h14: mul13_out=8'he4;
		8'h15: mul13_out=8'he9;
		8'h16: mul13_out=8'hfe;
		8'h17: mul13_out=8'hf3;
		8'h18: mul13_out=8'hb8;
		8'h19: mul13_out=8'hb5;
		8'h1a: mul13_out=8'ha2;
		8'h1b: mul13_out=8'haf;
		8'h1c: mul13_out=8'h8c;
		8'h1d: mul13_out=8'h81;
		8'h1e: mul13_out=8'h96;
		8'h1f: mul13_out=8'h9b;
		8'h20: mul13_out=8'hbb;
		8'h21: mul13_out=8'hb6;
		8'h22: mul13_out=8'ha1;
		8'h23: mul13_out=8'hac;
		8'h24: mul13_out=8'h8f;
		8'h25: mul13_out=8'h82;
		8'h26: mul13_out=8'h95;
		8'h27: mul13_out=8'h98;
		8'h28: mul13_out=8'hd3;
		8'h29: mul13_out=8'hde;
		8'h2a: mul13_out=8'hc9;
		8'h2b: mul13_out=8'hc4;
		8'h2c: mul13_out=8'he7;
		8'h2d: mul13_out=8'hea;
		8'h2e: mul13_out=8'hfd;
		8'h2f: mul13_out=8'hf0;
		8'h30: mul13_out=8'h6b;
		8'h31: mul13_out=8'h66;
		8'h32: mul13_out=8'h71;
		8'h33: mul13_out=8'h7c;
		8'h34: mul13_out=8'h5f;
		8'h35: mul13_out=8'h52;
		8'h36: mul13_out=8'h45;
		8'h37: mul13_out=8'h48;
		8'h38: mul13_out=8'h03;
		8'h39: mul13_out=8'h0e;
		8'h3a: mul13_out=8'h19;
		8'h3b: mul13_out=8'h14;
		8'h3c: mul13_out=8'h37;
		8'h3d: mul13_out=8'h3a;
		8'h3e: mul13_out=8'h2d;
		8'h3f: mul13_out=8'h20;
		8'h40: mul13_out=8'h6d;
		8'h41: mul13_out=8'h60;
		8'h42: mul13_out=8'h77;
		8'h43: mul13_out=8'h7a;
		8'h44: mul13_out=8'h59;
		8'h45: mul13_out=8'h54;
		8'h46: mul13_out=8'h43;
		8'h47: mul13_out=8'h4e;
		8'h48: mul13_out=8'h05;
		8'h49: mul13_out=8'h08;
		8'h4a: mul13_out=8'h1f;
		8'h4b: mul13_out=8'h12;
		8'h4c: mul13_out=8'h31;
		8'h4d: mul13_out=8'h3c;
		8'h4e: mul13_out=8'h2b;
		8'h4f: mul13_out=8'h26;
		8'h50: mul13_out=8'hbd;
		8'h51: mul13_out=8'hb0;
		8'h52: mul13_out=8'ha7;
		8'h53: mul13_out=8'haa;
		8'h54: mul13_out=8'h89;
		8'h55: mul13_out=8'h84;
		8'h56: mul13_out=8'h93;
		8'h57: mul13_out=8'h9e;
		8'h58: mul13_out=8'hd5;
		8'h59: mul13_out=8'hd8;
		8'h5a: mul13_out=8'hcf;
		8'h5b: mul13_out=8'hc2;
		8'h5c: mul13_out=8'he1;
		8'h5d: mul13_out=8'hec;
		8'h5e: mul13_out=8'hfb;
		8'h5f: mul13_out=8'hf6;
		8'h60: mul13_out=8'hd6;
		8'h61: mul13_out=8'hdb;
		8'h62: mul13_out=8'hcc;
		8'h63: mul13_out=8'hc1;
		8'h64: mul13_out=8'he2;
		8'h65: mul13_out=8'hef;
		8'h66: mul13_out=8'hf8;
		8'h67: mul13_out=8'hf5;
		8'h68: mul13_out=8'hbe;
		8'h69: mul13_out=8'hb3;
		8'h6a: mul13_out=8'ha4;
		8'h6b: mul13_out=8'ha9;
		8'h6c: mul13_out=8'h8a;
		8'h6d: mul13_out=8'h87;
		8'h6e: mul13_out=8'h90;
		8'h6f: mul13_out=8'h9d;
		8'h70: mul13_out=8'h06;
		8'h71: mul13_out=8'h0b;
		8'h72: mul13_out=8'h1c;
		8'h73: mul13_out=8'h11;
		8'h74: mul13_out=8'h32;
		8'h75: mul13_out=8'h3f;
		8'h76: mul13_out=8'h28;
		8'h77: mul13_out=8'h25;
		8'h78: mul13_out=8'h6e;
		8'h79: mul13_out=8'h63;
		8'h7a: mul13_out=8'h74;
		8'h7b: mul13_out=8'h79;
		8'h7c: mul13_out=8'h5a;
		8'h7d: mul13_out=8'h57;
		8'h7e: mul13_out=8'h40;
		8'h7f: mul13_out=8'h4d;
		8'h80: mul13_out=8'hda;
		8'h81: mul13_out=8'hd7;
		8'h82: mul13_out=8'hc0;
		8'h83: mul13_out=8'hcd;
		8'h84: mul13_out=8'hee;
		8'h85: mul13_out=8'he3;
		8'h86: mul13_out=8'hf4;
		8'h87: mul13_out=8'hf9;
		8'h88: mul13_out=8'hb2;
		8'h89: mul13_out=8'hbf;
		8'h8a: mul13_out=8'ha8;
		8'h8b: mul13_out=8'ha5;
		8'h8c: mul13_out=8'h86;
		8'h8d: mul13_out=8'h8b;
		8'h8e: mul13_out=8'h9c;
		8'h8f: mul13_out=8'h91;
		8'h90: mul13_out=8'h0a;
		8'h91: mul13_out=8'h07;
		8'h92: mul13_out=8'h10;
		8'h93: mul13_out=8'h1d;
		8'h94: mul13_out=8'h3e;
		8'h95: mul13_out=8'h33;
		8'h96: mul13_out=8'h24;
		8'h97: mul13_out=8'h29;
		8'h98: mul13_out=8'h62;
		8'h99: mul13_out=8'h6f;
		8'h9a: mul13_out=8'h78;
		8'h9b: mul13_out=8'h75;
		8'h9c: mul13_out=8'h56;
		8'h9d: mul13_out=8'h5b;
		8'h9e: mul13_out=8'h4c;
		8'h9f: mul13_out=8'h41;
		8'ha0: mul13_out=8'h61;
		8'ha1: mul13_out=8'h6c;
		8'ha2: mul13_out=8'h7b;
		8'ha3: mul13_out=8'h76;
		8'ha4: mul13_out=8'h55;
		8'ha5: mul13_out=8'h58;
		8'ha6: mul13_out=8'h4f;
		8'ha7: mul13_out=8'h42;
		8'ha8: mul13_out=8'h09;
		8'ha9: mul13_out=8'h04;
		8'haa: mul13_out=8'h13;
		8'hab: mul13_out=8'h1e;
		8'hac: mul13_out=8'h3d;
		8'had: mul13_out=8'h30;
		8'hae: mul13_out=8'h27;
		8'haf: mul13_out=8'h2a;
		8'hb0: mul13_out=8'hb1;
		8'hb1: mul13_out=8'hbc;
		8'hb2: mul13_out=8'hab;
		8'hb3: mul13_out=8'ha6;
		8'hb4: mul13_out=8'h85;
		8'hb5: mul13_out=8'h88;
		8'hb6: mul13_out=8'h9f;
		8'hb7: mul13_out=8'h92;
		8'hb8: mul13_out=8'hd9;
		8'hb9: mul13_out=8'hd4;
		8'hba: mul13_out=8'hc3;
		8'hbb: mul13_out=8'hce;
		8'hbc: mul13_out=8'hed;
		8'hbd: mul13_out=8'he0;
		8'hbe: mul13_out=8'hf7;
		8'hbf: mul13_out=8'hfa;
		8'hc0: mul13_out=8'hb7;
		8'hc1: mul13_out=8'hba;
		8'hc2: mul13_out=8'had;
		8'hc3: mul13_out=8'ha0;
		8'hc4: mul13_out=8'h83;
		8'hc5: mul13_out=8'h8e;
		8'hc6: mul13_out=8'h99;
		8'hc7: mul13_out=8'h94;
		8'hc8: mul13_out=8'hdf;
		8'hc9: mul13_out=8'hd2;
		8'hca: mul13_out=8'hc5;
		8'hcb: mul13_out=8'hc8;
		8'hcc: mul13_out=8'heb;
		8'hcd: mul13_out=8'he6;
		8'hce: mul13_out=8'hf1;
		8'hcf: mul13_out=8'hfc;
		8'hd0: mul13_out=8'h67;
		8'hd1: mul13_out=8'h6a;
		8'hd2: mul13_out=8'h7d;
		8'hd3: mul13_out=8'h70;
		8'hd4: mul13_out=8'h53;
		8'hd5: mul13_out=8'h5e;
		8'hd6: mul13_out=8'h49;
		8'hd7: mul13_out=8'h44;
		8'hd8: mul13_out=8'h0f;
		8'hd9: mul13_out=8'h02;
		8'hda: mul13_out=8'h15;
		8'hdb: mul13_out=8'h18;
		8'hdc: mul13_out=8'h3b;
		8'hdd: mul13_out=8'h36;
		8'hde: mul13_out=8'h21;
		8'hdf: mul13_out=8'h2c;
		8'he0: mul13_out=8'h0c;
		8'he1: mul13_out=8'h01;
		8'he2: mul13_out=8'h16;
		8'he3: mul13_out=8'h1b;
		8'he4: mul13_out=8'h38;
		8'he5: mul13_out=8'h35;
		8'he6: mul13_out=8'h22;
		8'he7: mul13_out=8'h2f;
		8'he8: mul13_out=8'h64;
		8'he9: mul13_out=8'h69;
		8'hea: mul13_out=8'h7e;
		8'heb: mul13_out=8'h73;
		8'hec: mul13_out=8'h50;
		8'hed: mul13_out=8'h5d;
		8'hee: mul13_out=8'h4a;
		8'hef: mul13_out=8'h47;
		8'hf0: mul13_out=8'hdc;
		8'hf1: mul13_out=8'hd1;
		8'hf2: mul13_out=8'hc6;
		8'hf3: mul13_out=8'hcb;
		8'hf4: mul13_out=8'he8;
		8'hf5: mul13_out=8'he5;
		8'hf6: mul13_out=8'hf2;
		8'hf7: mul13_out=8'hff;
		8'hf8: mul13_out=8'hb4;
		8'hf9: mul13_out=8'hb9;
		8'hfa: mul13_out=8'hae;
		8'hfb: mul13_out=8'ha3;
		8'hfc: mul13_out=8'h80;
		8'hfd: mul13_out=8'h8d;
		8'hfe: mul13_out=8'h9a;
		8'hff: mul13_out=8'h97;
endcase
end

endmodule
