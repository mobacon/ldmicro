//-----------------------------------------------------------------------------
// Copyright 2012 Sven Schlender
//
// This file is part of LDmicro.
// 
// LDmicro is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// LDmicro is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with LDmicro.  If not, see <http://www.gnu.org/licenses/>.
//-----------------------------------------------------------------------------

#define CURRENT_FORMAT_VERSION   (1u)
#define SIZEOF_HEADER			 (4u)
#define MAX_PROJECTNAME_LENGTH   (16u)

# pragma pack (1)
typedef struct MetaFlagsTag
{
    BYTE FormatVersion : 4;
    BYTE IsCompiled : 1;
	BYTE Reserved;
} MetaFlags;

typedef struct NetzerMetaInformationTag 
{
	WORD	ImageCRC;	
	WORD	ImageLength;
	WORD	Opcodes;
	WORD	CycleTime;
	DWORD	TimeStamp;
	MetaFlags	Flags;
	BYTE	ProjectnameLength;
//	BYTE	Projectname[];
} NetzerMetaInformation;
# pragma pack ()

typedef enum NetzerIntCodesTag 
{
    OP_END_OF_PROGRAM = 0x00,
    OP_BIT_SET = 0x04,
    OP_BIT_SET_IO = 0x08,
    OP_BIT_CLEAR = 0x0C,
    OP_BIT_CLEAR_IO = 0x10,
    OP_COPY_BITS_SAME_REGISTER = 0x14,
    OP_COPY_BITS = 0x18,
    OP_COPY_BITS_IO = 0x1C,
    OP_COPY_BIT_TO_IO = 0x20,
    OP_COPY_BIT_FROM_IO = 0x24,
	OP_SET_VARIABLE_TO_LITERAL = 0x28,
    OP_SET_VARIABLE_TO_LITERAL_IO = 0x2C,
    OP_SET_VARIABLE_TO_VARIABLE = 0x30,
    OP_SET_VARIABLE_TO_VARIABLE_IO = 0x34,
    OP_SET_VARIABLE_IO_TO_VARIABLE = 0x38,
    OP_SET_VARIABLE_IO_TO_VARIABLE_IO = 0x3C,
	OP_INCREMENT_VARIABLE = 0x40,
    OP_INCREMENT_VARIABLE_IO = 0x44,
	
	OP_SET_VARIABLE_ADD = 0x48,
    OP_SET_VARIABLE_SUB = 0x4C,
    OP_SET_VARIABLE_MUL = 0x50,
    OP_SET_VARIABLE_DIV = 0x54,

	OP_IF_BIT_SET = 0x58,
    OP_IF_BIT_SET_IO = 0x5C,
    OP_IF_BIT_CLEARED = 0x60,
    OP_IF_BIT_CLEARED_IO = 0x64,

    OP_IF_VARIABLE_LES_LITERAL = 0x68,
    OP_IF_VARIABLE_IO_LES_LITERAL = 0x6C,
	OP_IF_VARIABLE_EQUALS_VARIABLE = 0x70,
	OP_IF_VARIABLE_GRT_VARIABLE = 0x74,
	
	OP_ELSE = 0x78
} NetzerIntCodes;


typedef struct OpcodeMetaTag
{
	int Opcodes;
	int BytesConsumed;
} OpcodeMeta;
