		case 'e': /* Vendor-specific (Espressif) operands.  */
		  switch (*++oparg)
		    {
		    case 'd':
		      switch (*++oparg)
			{
			case 'i':
			  switch (*++oparg)
			    {
			    case '2':	/* Xedi2 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_IMM2 (imm_expr->X_add_number))
				{
				  as_bad (_("bad value for imm2, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_IMM2 (imm_expr->X_add_number);
			    esp_imm_done:
			      asarg = expr_parse_end;
			      imm_expr->X_op = O_absent;
			      continue;
			    case '5':
			      switch (*++oparg)
				{
				case '0':	/* Xedi50 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 15
				      || imm_expr->X_add_number < -16
				      || !VALID_ESP_IMM5_0 (imm_expr->
							    X_add_number))
				    {
				      as_bad (_("bad value for imm5, "
						"must be in range -16..15 with step 1"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_IMM5_0 (imm_expr->
						       X_add_number);
				  goto esp_imm_done;
				case '1':	/* Xedi51 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 15
				      || imm_expr->X_add_number < -16
				      || !VALID_ESP_IMM5_1 (imm_expr->
							    X_add_number))
				    {
				      as_bad (_("bad value for imm5, "
						"must be in range -16..15 with step 1"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_IMM5_1 (imm_expr->
						       X_add_number);
				  goto esp_imm_done;
				default:	/* Xedi5[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    default:	/* Xedi[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case 's':
			  switch (*++oparg)
			    {
			    case '0':	/* Xeds0 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 32
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SHAMT_0 (imm_expr->
							 X_add_number))
				{
				  as_bad (_("bad value for shamt, "
					    "must be in range 0..32 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SHAMT_0 (imm_expr->X_add_number);
			      goto esp_imm_done;
			    case '1':	/* Xeds1 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 32
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SHAMT_1 (imm_expr->
							 X_add_number))
				{
				  as_bad (_("bad value for shamt, "
					    "must be in range 0..32 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SHAMT_1 (imm_expr->X_add_number);
			      goto esp_imm_done;
			    default:	/* Xeds[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xed[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'l':
		      switch (*++oparg)
			{
			case 'c':	/* Xelc */
			  if (my_getSmallExpression
			      (imm_expr, imm_reloc, asarg, p)
			      || imm_expr->X_op != O_constant
			      || imm_expr->X_add_number > 4095
			      || imm_expr->X_add_number < 0
			      || !VALID_ESP_LP_COUNT (imm_expr->X_add_number))
			    {
			      as_bad (_("bad value for lp_count, "
					"must be in range 0..4095 with step 1"));
			      break;
			    }
			  ip->insn_opcode |=
			    ENCODE_ESP_LP_COUNT (imm_expr->X_add_number);
			  goto esp_imm_done;
			case 'i':	/* Xeli */
			  if (my_getSmallExpression
			      (imm_expr, imm_reloc, asarg, p)
			      || imm_expr->X_op != O_constant
			      || imm_expr->X_add_number > 1
			      || imm_expr->X_add_number < 0
			      || !VALID_ESP_LP_ID (imm_expr->X_add_number))
			    {
			      as_bad (_("bad value for lp_id, "
					"must be in range 0..1 with step 1"));
			      break;
			    }
			  ip->insn_opcode |=
			    ENCODE_ESP_LP_ID (imm_expr->X_add_number);
			  goto esp_imm_done;
			case 'o':
			  switch (*++oparg)
			    {
			    case '1':
			      switch (*++oparg)
				{
				case '2':	/* Xelo12 */
				  my_getExpression (imm_expr, asarg);
				  *imm_reloc =
				    BFD_RELOC_RISCV_ESP_LP_OFFSET_12;
				  asarg = expr_parse_end;
				  continue;
				default:	/* Xelo1[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '9':	/* Xelo9 */
			      my_getExpression (imm_expr, asarg);
			      *imm_reloc = BFD_RELOC_RISCV_ESP_LP_OFFSET_9;
			      asarg = expr_parse_end;
			      continue;
			    default:	/* Xelo[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xel[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'o':
		      switch (*++oparg)
			{
			case '4':
			  switch (*++oparg)
			    {
			    case '4':
			      switch (*++oparg)
				{
				case '0':	/* Xeo440 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 112
				      || imm_expr->X_add_number < -128
				      || !VALID_ESP_OFFSET_16_16_0 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_16_16, "
						"must be in range -128..112 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_16_16_0 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				case '1':	/* Xeo441 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 112
				      || imm_expr->X_add_number < -128
				      || !VALID_ESP_OFFSET_16_16_1 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_16_16, "
						"must be in range -128..112 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_16_16_1 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				case '2':	/* Xeo442 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 112
				      || imm_expr->X_add_number < -128
				      || !VALID_ESP_OFFSET_16_16_2 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_16_16, "
						"must be in range -128..112 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_16_16_2 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo44[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    default:	/* Xeo4[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case '8':
			  switch (*++oparg)
			    {
			    case '4':
			      switch (*++oparg)
				{
				case '0':	/* Xeo840 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 2032
				      || imm_expr->X_add_number < -2048
				      ||
				      !VALID_ESP_OFFSET_256_16_0 (imm_expr->
								  X_add_number))
				    {
				      as_bad (_
					      ("bad value for offset_256_16, "
					       "must be in range -2048..2032 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_16_0 (imm_expr->
								X_add_number);
				  goto esp_imm_done;
				case '1':	/* Xeo841 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 2032
				      || imm_expr->X_add_number < -2048
				      ||
				      !VALID_ESP_OFFSET_256_16_1 (imm_expr->
								  X_add_number))
				    {
				      as_bad (_
					      ("bad value for offset_256_16, "
					       "must be in range -2048..2032 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_16_1 (imm_expr->
								X_add_number);
				  goto esp_imm_done;
				case '2':	/* Xeo842 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 2032
				      || imm_expr->X_add_number < -2048
				      ||
				      !VALID_ESP_OFFSET_256_16_2 (imm_expr->
								  X_add_number))
				    {
				      as_bad (_
					      ("bad value for offset_256_16, "
					       "must be in range -2048..2032 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_16_2 (imm_expr->
								X_add_number);
				  goto esp_imm_done;
				case '3':	/* Xeo843 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 2032
				      || imm_expr->X_add_number < -2048
				      ||
				      !VALID_ESP_OFFSET_256_16_3 (imm_expr->
								  X_add_number))
				    {
				      as_bad (_
					      ("bad value for offset_256_16, "
					       "must be in range -2048..2032 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_16_3 (imm_expr->
								X_add_number);
				  goto esp_imm_done;
				case '4':	/* Xeo844 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 2032
				      || imm_expr->X_add_number < -2048
				      ||
				      !VALID_ESP_OFFSET_256_16_4 (imm_expr->
								  X_add_number))
				    {
				      as_bad (_
					      ("bad value for offset_256_16, "
					       "must be in range -2048..2032 with step 16"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_16_4 (imm_expr->
								X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo84[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '0':
			      switch (*++oparg)
				{
				case '0':	/* Xeo800 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 127
				      || imm_expr->X_add_number < -128
				      || !VALID_ESP_OFFSET_256_1_0 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_1, "
						"must be in range -128..127 with step 1"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_1_0 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo80[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '1':
			      switch (*++oparg)
				{
				case '0':	/* Xeo810 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 254
				      || imm_expr->X_add_number < -256
				      || !VALID_ESP_OFFSET_256_2_0 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_2, "
						"must be in range -256..254 with step 2"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_2_0 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo81[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '2':
			      switch (*++oparg)
				{
				case '0':	/* Xeo820 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 508
				      || imm_expr->X_add_number < -512
				      || !VALID_ESP_OFFSET_256_4_0 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_4, "
						"must be in range -512..508 with step 4"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_4_0 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo82[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '3':
			      switch (*++oparg)
				{
				case '0':	/* Xeo830 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 1016
				      || imm_expr->X_add_number < -1024
				      || !VALID_ESP_OFFSET_256_8_0 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_8, "
						"must be in range -1024..1016 with step 8"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_8_0 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				case '1':	/* Xeo831 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 1016
				      || imm_expr->X_add_number < -1024
				      || !VALID_ESP_OFFSET_256_8_1 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_8, "
						"must be in range -1024..1016 with step 8"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_8_1 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				case '2':	/* Xeo832 */
				  if (my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      || imm_expr->X_op != O_constant
				      || imm_expr->X_add_number > 1016
				      || imm_expr->X_add_number < -1024
				      || !VALID_ESP_OFFSET_256_8_2 (imm_expr->
								    X_add_number))
				    {
				      as_bad (_("bad value for offset_256_8, "
						"must be in range -1024..1016 with step 8"));
				      break;
				    }
				  ip->insn_opcode |=
				    ENCODE_ESP_OFFSET_256_8_2 (imm_expr->
							       X_add_number);
				  goto esp_imm_done;
				default:	/* Xeo83[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    default:	/* Xeo8[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xeo[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'q':
		      switch (*++oparg)
			{
			case 'u':	/* Xequ */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  INSERT_OPERAND (ESP_QU, *ip, regno);
			  continue;
			case 'v':	/* Xeqv */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  INSERT_OPERAND (ESP_QV, *ip, regno);
			  continue;
			case 'w':	/* Xeqw */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  ip->insn_opcode |= ENCODE_ESP_QW (regno);
			  continue;
			case 'x':	/* Xeqx */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  INSERT_OPERAND (ESP_QX, *ip, regno);
			  continue;
			case 'y':	/* Xeqy */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  INSERT_OPERAND (ESP_QY, *ip, regno);
			  continue;
			case 'z':	/* Xeqz */
			  if (!reg_lookup (&asarg, RCLASS_ESPV, &regno))
			    break;
			  INSERT_OPERAND (ESP_QZ, *ip, regno);
			  continue;
			default:	/* Xeq[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'r':
		      switch (*++oparg)
			{
			case 'c':	/* Xerc */
			  if (!reg_lookup (&asarg, RCLASS_GPR, &regno)
			      || !((regno >= 8 && regno <= 15)
				   || (regno >= 24 && regno <= 31)))
			    break;
			  ip->insn_opcode |= ENCODE_ESP_RD (regno);
			  continue;
			case 'a':
			  switch (*++oparg)
			    {
			    case '0':	/* Xera0 */
			      if (!reg_lookup (&asarg, RCLASS_GPR, &regno)
				  || !((regno >= 8 && regno <= 15)
				       || (regno >= 24 && regno <= 31)))
				break;
			      ip->insn_opcode |= ENCODE_ESP_RS1_0 (regno);
			      continue;
			    case '1':	/* Xera1 */
			      if (!reg_lookup (&asarg, RCLASS_GPR, &regno)
				  || !((regno >= 8 && regno <= 15)
				       || (regno >= 24 && regno <= 31)))
				break;
			      ip->insn_opcode |= ENCODE_ESP_RS1_1 (regno);
			      continue;
			    default:	/* Xera[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case 'b':
			  switch (*++oparg)
			    {
			    case '0':	/* Xerb0 */
			      if (!reg_lookup (&asarg, RCLASS_GPR, &regno)
				  || !((regno >= 8 && regno <= 15)
				       || (regno >= 24 && regno <= 31)))
				break;
			      ip->insn_opcode |= ENCODE_ESP_RS2_0 (regno);
			      continue;
			    case '1':	/* Xerb1 */
			      if (!reg_lookup (&asarg, RCLASS_GPR, &regno)
				  || !((regno >= 8 && regno <= 15)
				       || (regno >= 24 && regno <= 31)))
				break;
			      ip->insn_opcode |= ENCODE_ESP_RS2_1 (regno);
			      continue;
			    default:	/* Xerb[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xer[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'v':
		      switch (*++oparg)
			{
			case 'r':
			  switch (*++oparg)
			    {
			    case '0':
			      switch (*++oparg)
				{
				case '0':	/* Xevr00 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_00 (regno);
				      continue;
				    }
				  break;
				case '1':	/* Xevr01 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_01 (regno);
				      continue;
				    }
				  break;
				case '2':	/* Xevr02 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_02 (regno);
				      continue;
				    }
				  break;
				case '3':	/* Xevr03 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_03 (regno);
				      continue;
				    }
				  break;
				case '4':	/* Xevr04 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_04 (regno);
				      continue;
				    }
				  break;
				case '5':	/* Xevr05 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_05 (regno);
				      continue;
				    }
				  break;
				case '6':	/* Xevr06 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_06 (regno);
				      continue;
				    }
				  break;
				case '7':	/* Xevr07 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_07 (regno);
				      continue;
				    }
				  break;
				case '8':	/* Xevr08 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_08 (regno);
				      continue;
				    }
				  break;
				case '9':	/* Xevr09 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_09 (regno);
				      continue;
				    }
				  break;
				default:	/* Xevr0[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '1':
			      switch (*++oparg)
				{
				case '0':	/* Xevr10 */
				  if (arg_lookup
				      (&asarg, riscv_espv_rm,
				       ARRAY_SIZE (riscv_espv_rm), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_RM_10 (regno);
				      continue;
				    }
				  break;
				default:	/* Xevr1[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    default:	/* Xevr[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case 's':
			  switch (*++oparg)
			    {
			    case '0':
			      switch (*++oparg)
				{
				case '0':	/* Xevs00 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_00 (regno);
				      continue;
				    }
				  break;
				case '1':	/* Xevs01 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_01 (regno);
				      continue;
				    }
				  break;
				case '2':	/* Xevs02 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_02 (regno);
				      continue;
				    }
				  break;
				case '3':	/* Xevs03 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_03 (regno);
				      continue;
				    }
				  break;
				case '4':	/* Xevs04 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_04 (regno);
				      continue;
				    }
				  break;
				case '5':	/* Xevs05 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_05 (regno);
				      continue;
				    }
				  break;
				case '6':	/* Xevs06 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_06 (regno);
				      continue;
				    }
				  break;
				case '7':	/* Xevs07 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_07 (regno);
				      continue;
				    }
				  break;
				case '8':	/* Xevs08 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_08 (regno);
				      continue;
				    }
				  break;
				case '9':	/* Xevs09 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_09 (regno);
				      continue;
				    }
				  break;
				default:	/* Xevs0[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    case '1':
			      switch (*++oparg)
				{
				case '0':	/* Xevs10 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_10 (regno);
				      continue;
				    }
				  break;
				case '1':	/* Xevs11 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_11 (regno);
				      continue;
				    }
				  break;
				case '2':	/* Xevs12 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_12 (regno);
				      continue;
				    }
				  break;
				case '3':	/* Xevs13 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_13 (regno);
				      continue;
				    }
				  if (!my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      && imm_expr->X_op == O_constant
				      && imm_expr->X_add_number <= 1
				      && imm_expr->X_add_number >= 0)
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_13 (imm_expr->
							   X_add_number);
				      goto esp_imm_done;
				    }
				  break;
				case '4':	/* Xevs14 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_14 (regno);
				      continue;
				    }
				  break;
				case '5':	/* Xevs15 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_15 (regno);
				      continue;
				    }
				  if (!my_getSmallExpression
				      (imm_expr, imm_reloc, asarg, p)
				      && imm_expr->X_op == O_constant
				      && imm_expr->X_add_number <= 1
				      && imm_expr->X_add_number >= 0)
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_15 (imm_expr->
							   X_add_number);
				      goto esp_imm_done;
				    }
				  break;
				case '6':	/* Xevs16 */
				  if (arg_lookup
				      (&asarg, riscv_espv_sat,
				       ARRAY_SIZE (riscv_espv_sat), &regno))
				    {
				      ip->insn_opcode |=
					ENCODE_ESP_SAT_16 (regno);
				      continue;
				    }
				  break;
				default:	/* Xevs1[.] */
				  goto unknown_riscv_ip_operand;
				}
			      break;
			    default:	/* Xevs[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xev[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 's':
		      switch (*++oparg)
			{
			case '4':
			  switch (*++oparg)
			    {
			    case '0':	/* Xes40 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 15
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_16_0 (imm_expr->
							     X_add_number))
				{
				  as_bad (_("bad value for select_16, "
					    "must be in range 0..15 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_16_0 (imm_expr->
							X_add_number);
			      goto esp_imm_done;
			    case '1':	/* Xes41 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 15
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_16_1 (imm_expr->
							     X_add_number))
				{
				  as_bad (_("bad value for select_16, "
					    "must be in range 0..15 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_16_1 (imm_expr->
							X_add_number);
			      goto esp_imm_done;
			    case '2':	/* Xes42 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 15
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_16_2 (imm_expr->
							     X_add_number))
				{
				  as_bad (_("bad value for select_16, "
					    "must be in range 0..15 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_16_2 (imm_expr->
							X_add_number);
			      goto esp_imm_done;
			    case '3':	/* Xes43 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 15
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_16_3 (imm_expr->
							     X_add_number))
				{
				  as_bad (_("bad value for select_16, "
					    "must be in range 0..15 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_16_3 (imm_expr->
							X_add_number);
			      goto esp_imm_done;
			    default:	/* Xes4[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case '1':
			  switch (*++oparg)
			    {
			    case '0':	/* Xes10 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 1
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_2_0 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_2, "
					    "must be in range 0..1 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_2_0 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '1':	/* Xes11 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 1
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_2_1 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_2, "
					    "must be in range 0..1 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_2_1 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '2':	/* Xes12 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 1
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_2_2 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_2, "
					    "must be in range 0..1 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_2_2 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '3':	/* Xes13 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 1
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_2_3 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_2, "
					    "must be in range 0..1 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_2_3 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    default:	/* Xes1[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case '2':
			  switch (*++oparg)
			    {
			    case '0':	/* Xes20 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_0 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_0 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '1':	/* Xes21 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_1 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_1 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '2':	/* Xes22 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_2 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_2 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '3':	/* Xes23 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_3 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_3 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '4':	/* Xes24 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_4 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_4 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '5':	/* Xes25 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_5 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_5 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '6':	/* Xes26 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 3
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_4_6 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_4, "
					    "must be in range 0..3 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_4_6 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    default:	/* Xes2[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			case '3':
			  switch (*++oparg)
			    {
			    case '0':	/* Xes30 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 7
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_8_0 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_8, "
					    "must be in range 0..7 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_8_0 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '1':	/* Xes31 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 7
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_8_1 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_8, "
					    "must be in range 0..7 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_8_1 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    case '2':	/* Xes32 */
			      if (my_getSmallExpression
				  (imm_expr, imm_reloc, asarg, p)
				  || imm_expr->X_op != O_constant
				  || imm_expr->X_add_number > 7
				  || imm_expr->X_add_number < 0
				  || !VALID_ESP_SELECT_8_2 (imm_expr->
							    X_add_number))
				{
				  as_bad (_("bad value for select_8, "
					    "must be in range 0..7 with step 1"));
				  break;
				}
			      ip->insn_opcode |=
				ENCODE_ESP_SELECT_8_2 (imm_expr->
						       X_add_number);
			      goto esp_imm_done;
			    default:	/* Xes3[.] */
			      goto unknown_riscv_ip_operand;
			    }
			  break;
			default:	/* Xes[.] */
			  goto unknown_riscv_ip_operand;
			}
		      break;
		    case 'u':	/* Xeu */
		      if (my_getSmallExpression
			  (imm_expr, imm_reloc, asarg, p)
			  || imm_expr->X_op != O_constant
			  || imm_expr->X_add_number > 3
			  || imm_expr->X_add_number < 0
			  || !VALID_ESP_UPD_4 (imm_expr->X_add_number))
			{
			  as_bad (_("bad value for upd_4, "
				    "must be in range 0..3 with step 1"));
			  break;
			}
		      ip->insn_opcode |=
			ENCODE_ESP_UPD_4 (imm_expr->X_add_number);
		      goto esp_imm_done;
		    default:	/* Xe[.] */
		      goto unknown_riscv_ip_operand;
		    }
		  break;
