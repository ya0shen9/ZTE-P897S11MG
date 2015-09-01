.class public Lcom/android/server/FileOps;
.super Ljava/lang/Object;
.source "FileOps.java"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "voicesense"

.field static final TAG:Ljava/lang/String; = "FileOps"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static generateAdncKw(IZ)V
    .locals 29
    .parameter "index"
    .parameter "isOEMKw"

    .prologue
    .line 103
    const/16 v19, 0x0

    .line 104
    .local v19, in_file_path:Ljava/lang/String;
    const/16 v23, 0x0

    .line 107
    .local v23, out_file_path:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 108
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "voicesense"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "vskw_user"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".bin"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 117
    :goto_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "voicesense"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "audience-vs-kw-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, p0, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ".bin"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 119
    const/4 v11, 0x0

    .line 120
    .local v11, f_in:Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 121
    .local v16, f_out:Ljava/io/FileOutputStream;
    const-wide/16 v14, 0x0

    .line 123
    .local v14, f_in_len:J
    const/4 v9, 0x0

    .line 124
    .local v9, count:I
    const/16 v26, 0x200

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 125
    .local v18, in_buf:[B
    const/16 v6, 0xf

    .local v6, byte_0f:B
    const/4 v8, -0x1

    .local v8, byte_ff:B
    const/16 v7, -0x10

    .line 126
    .local v7, byte_f0:B
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v5, v0, [B

    .line 127
    .local v5, buffer:[B
    const/16 v25, 0x0

    .line 130
    .local v25, version:B
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v13, f_in_file:Ljava/io/File;
    const-wide/16 v21, 0x0

    .line 133
    .local v21, loop_cntr:J
    const/4 v3, 0x0

    .line 136
    .local v3, blk_seq:B
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v11           #f_in:Ljava/io/FileInputStream;
    .local v12, f_in:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v17, Ljava/io/FileOutputStream;

    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .end local v16           #f_out:Ljava/io/FileOutputStream;
    .local v17, f_out:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 141
    const-string v26, "FileOps"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "#### (Input file size = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")  ####"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 143
    .end local v3           #blk_seq:B
    .local v4, blk_seq:B
    :goto_1
    cmp-long v26, v21, v14

    if-gez v26, :cond_2

    .line 144
    const/16 v24, 0x200

    .line 146
    .local v24, size:I
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v21

    if-eqz v26, :cond_0

    .line 147
    const/16 v24, 0x1fc

    .line 149
    :cond_0
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v21

    cmp-long v26, v26, v14

    if-lez v26, :cond_1

    .line 150
    sub-long v26, v14, v21

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v24, v0

    .line 153
    :cond_1
    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    .line 154
    const-string v26, "FileOps"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "#### (byte counter, req sz, read sz) = ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ") ####"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_5

    .line 158
    const-string v26, "FileOps"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "#### End of file ####"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v24           #size:I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 193
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 195
    const-string v26, "FileOps"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "audience-vs-kw file saved: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v17

    .end local v17           #f_out:Ljava/io/FileOutputStream;
    .restart local v16       #f_out:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 199
    .end local v4           #blk_seq:B
    .end local v12           #f_in:Ljava/io/FileInputStream;
    .end local v13           #f_in_file:Ljava/io/File;
    .end local v21           #loop_cntr:J
    .restart local v11       #f_in:Ljava/io/FileInputStream;
    :goto_2
    return-void

    .line 111
    .end local v5           #buffer:[B
    .end local v6           #byte_0f:B
    .end local v7           #byte_f0:B
    .end local v8           #byte_ff:B
    .end local v9           #count:I
    .end local v11           #f_in:Ljava/io/FileInputStream;
    .end local v14           #f_in_len:J
    .end local v16           #f_out:Ljava/io/FileOutputStream;
    .end local v18           #in_buf:[B
    .end local v25           #version:B
    :cond_3
    if-eqz p1, :cond_4

    .line 112
    const-string v19, "/system/etc/firmware/audience/cvqmodels/oemkw_nihaozhongxing.bin"

    goto/16 :goto_0

    .line 114
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "voicesense"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "vskw_user.bin"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 162
    .restart local v4       #blk_seq:B
    .restart local v5       #buffer:[B
    .restart local v6       #byte_0f:B
    .restart local v7       #byte_f0:B
    .restart local v8       #byte_ff:B
    .restart local v9       #count:I
    .restart local v12       #f_in:Ljava/io/FileInputStream;
    .restart local v13       #f_in_file:Ljava/io/File;
    .restart local v14       #f_in_len:J
    .restart local v17       #f_out:Ljava/io/FileOutputStream;
    .restart local v18       #in_buf:[B
    .restart local v21       #loop_cntr:J
    .restart local v24       #size:I
    .restart local v25       #version:B
    :cond_5
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v21

    if-nez v26, :cond_6

    .line 164
    const/16 v26, 0x2

    :try_start_3
    aget-byte v26, v18, v26

    and-int v26, v26, v6

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 165
    const/16 v26, 0x2

    add-int/lit8 v27, p0, 0x1

    shl-int/lit8 v27, v27, 0x4

    and-int v27, v27, v7

    or-int v27, v27, v25

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v18, v26

    .line 167
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-byte v27, v18, v27

    aput-byte v27, v5, v26

    .line 168
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-byte v27, v18, v27

    aput-byte v27, v5, v26

    .line 169
    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-byte v27, v18, v27

    aput-byte v27, v5, v26

    .line 170
    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-byte v27, v18, v27

    aput-byte v27, v5, v26

    .line 174
    :cond_6
    int-to-long v0, v9

    move-wide/from16 v26, v0

    add-long v26, v26, v21

    cmp-long v26, v26, v14

    if-gez v26, :cond_7

    move/from16 v0, v24

    if-ne v0, v9, :cond_7

    .line 175
    const/16 v26, 0x3

    add-int/lit8 v27, v4, 0x1

    move/from16 v0, v27

    int-to-byte v3, v0

    .end local v4           #blk_seq:B
    .restart local v3       #blk_seq:B
    aput-byte v4, v5, v26

    .line 181
    :goto_3
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v21

    if-eqz v26, :cond_8

    .line 182
    const/16 v20, 0x0

    .local v20, j:I
    :goto_4
    const/16 v26, 0x4

    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 183
    aget-byte v26, v5, v20

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 182
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 177
    .end local v3           #blk_seq:B
    .end local v20           #j:I
    .restart local v4       #blk_seq:B
    :cond_7
    const/16 v26, 0x3

    aput-byte v8, v5, v26

    move v3, v4

    .end local v4           #blk_seq:B
    .restart local v3       #blk_seq:B
    goto :goto_3

    .line 187
    :cond_8
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 189
    int-to-long v0, v9

    move-wide/from16 v26, v0

    add-long v21, v21, v26

    move v4, v3

    .line 190
    .end local v3           #blk_seq:B
    .restart local v4       #blk_seq:B
    goto/16 :goto_1

    .line 196
    .end local v4           #blk_seq:B
    .end local v12           #f_in:Ljava/io/FileInputStream;
    .end local v13           #f_in_file:Ljava/io/File;
    .end local v17           #f_out:Ljava/io/FileOutputStream;
    .end local v21           #loop_cntr:J
    .end local v24           #size:I
    .restart local v11       #f_in:Ljava/io/FileInputStream;
    .restart local v16       #f_out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 197
    .local v10, e:Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 196
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #f_in:Ljava/io/FileInputStream;
    .restart local v3       #blk_seq:B
    .restart local v12       #f_in:Ljava/io/FileInputStream;
    .restart local v13       #f_in_file:Ljava/io/File;
    .restart local v21       #loop_cntr:J
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12           #f_in:Ljava/io/FileInputStream;
    .restart local v11       #f_in:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3           #blk_seq:B
    .end local v11           #f_in:Ljava/io/FileInputStream;
    .end local v16           #f_out:Ljava/io/FileOutputStream;
    .restart local v12       #f_in:Ljava/io/FileInputStream;
    .restart local v17       #f_out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    move-object/from16 v16, v17

    .end local v17           #f_out:Ljava/io/FileOutputStream;
    .restart local v16       #f_out:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #f_in:Ljava/io/FileInputStream;
    .restart local v11       #f_in:Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static isOEMKw(I)Z
    .locals 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 87
    if-eqz p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "voicesense"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vskw_user.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, in_file_path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, f_in_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static turnOffVsKw(IZ)V
    .locals 7
    .parameter "index"
    .parameter "needDeleteVsKw"

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, in_file_path:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "voicesense"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vskw_user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "voicesense"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audience-vs-kw-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, out_file_path:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, f_in_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 46
    .end local v0           #f_in_file:Ljava/io/File;
    :cond_0
    const-string v4, "FileOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out_file_path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, f_out_file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    const-string v4, "FileOps"

    const-string v5, "delete file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    :cond_1
    return-void

    .line 32
    .end local v1           #f_out_file:Ljava/io/File;
    .end local v3           #out_file_path:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/server/FileOps;->isOEMKw(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 33
    const-string v2, "/system/etc/firmware/audience/cvqmodels/oemkw_nihaozhongxing.bin"

    goto :goto_0

    .line 35
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "voicesense"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vskw_user.bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static turnOnVsKw(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/server/FileOps;->isOEMKw(I)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/FileOps;->generateAdncKw(IZ)V

    .line 82
    return-void
.end method
