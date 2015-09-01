.class public Landroid/media/ZteRingtoneManager;
.super Landroid/media/RingtoneManager;
.source "ZteRingtoneManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZteRingtoneManager"

.field public static final TYPE_ALL:I = 0xf

.field public static final TYPE_MESSAGE:I = 0x8

.field public static final TYPE_MESSAGE_SECOND:I = 0x40

.field public static final TYPE_NOTIFICATION_SECOND:I = 0x20

.field public static final TYPE_RINGTONE_SECOND:I = 0x10


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ZteRingtoneManager;->mType:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ZteRingtoneManager;->mType:I

    .line 81
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    const-string v8, "ZteRingtoneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getActualDefaultRingtoneUri type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p1}, Landroid/media/ZteRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, setting:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v4, v7

    .line 128
    :cond_0
    :goto_0
    return-object v4

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, uriString:Ljava/lang/String;
    const-string v8, "ZteRingtoneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getActualDefaultRingtoneUri().uriString= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, bExist:Z
    const/4 v4, 0x0

    .line 104
    .local v4, uri:Landroid/net/Uri;
    if-nez v5, :cond_2

    move-object v4, v7

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 106
    invoke-static {p0, p1, v4}, Landroid/media/ZteRingtoneManager;->getCursor(Landroid/content/Context;ILandroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    .local v1, cursor:Landroid/database/Cursor;
    const-string v7, "ZteRingtoneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getActualDefaultRingtoneUri cursor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v1, :cond_6

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, iRingtone:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 113
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    move v0, v6

    .line 114
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    .end local v2           #iRingtone:I
    :goto_2
    const-string v6, "ZteRingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getActualDefaultRingtoneUri().bExist= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-nez v0, :cond_0

    .line 121
    and-int/lit8 v6, p1, 0x1

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x10

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x20

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x8

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x40

    if-nez v6, :cond_4

    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_0

    .line 125
    :cond_4
    invoke-static {p0, p1}, Landroid/media/ZteRingtoneManager;->getValidRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 113
    .restart local v2       #iRingtone:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 116
    .end local v2           #iRingtone:I
    :cond_6
    const/4 v0, 0x0

    .line 117
    const-string v6, "ZteRingtoneManager"

    const-string v7, "getActualDefaultRingtoneUri().cursor == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getCursor(Landroid/content/Context;ILandroid/net/Uri;)Landroid/database/Cursor;
    .locals 11
    .parameter "context"
    .parameter "type"
    .parameter "uri"

    .prologue
    .line 132
    const/4 v8, 0x0

    .line 133
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 134
    const-string v6, "external"

    .line 135
    .local v6, EXTERNAL_VOLUME:Ljava/lang/String;
    const-string v7, "internal"

    .line 136
    .local v7, INTERNAL_VOLUME:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 137
    .local v10, volume:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 138
    .local v9, songid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, where:Ljava/lang/String;
    const-string v0, "ZteRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActualDefaultRingtoneUri songid= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 141
    .local v1, mediaUri:Landroid/net/Uri;
    if-eqz v10, :cond_2

    .line 142
    const-string v0, "internal"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 145
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "is_ringtone"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 168
    .end local v1           #mediaUri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #EXTERNAL_VOLUME:Ljava/lang/String;
    .end local v7           #INTERNAL_VOLUME:Ljava/lang/String;
    .end local v9           #songid:I
    .end local v10           #volume:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v8

    .line 150
    .restart local v1       #mediaUri:Landroid/net/Uri;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #EXTERNAL_VOLUME:Ljava/lang/String;
    .restart local v7       #INTERNAL_VOLUME:Ljava/lang/String;
    .restart local v9       #songid:I
    .restart local v10       #volume:Ljava/lang/String;
    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_4

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    .line 151
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "is_notification"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 155
    :cond_5
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_6

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_7

    .line 156
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "is_notification"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 160
    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "is_alarm"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "_data"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private static getDataForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 265
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 266
    const-string/jumbo v0, "ringtone_data"

    .line 280
    :goto_0
    return-object v0

    .line 267
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 268
    const-string/jumbo v0, "notification_sound_data"

    goto :goto_0

    .line 269
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 270
    const-string/jumbo v0, "message_sound_data"

    goto :goto_0

    .line 271
    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    .line 272
    const-string/jumbo v0, "ringtone_data_second"

    goto :goto_0

    .line 273
    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_4

    .line 274
    const-string/jumbo v0, "notification_sound_data_second"

    goto :goto_0

    .line 275
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 276
    const-string/jumbo v0, "message_sound_data_second"

    goto :goto_0

    .line 277
    :cond_5
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    .line 278
    const-string v0, "alarm_alert_data"

    goto :goto_0

    .line 280
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 1
    .parameter "defaultRingtoneUri"

    .prologue
    .line 293
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/16 v0, 0x8

    .line 303
    :goto_0
    return v0

    .line 295
    :cond_0
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_RINGTONE_SECOND_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const/16 v0, 0x10

    goto :goto_0

    .line 297
    :cond_1
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_NOTIFICATION_SOUND_SECOND_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const/16 v0, 0x20

    goto :goto_0

    .line 299
    :cond_2
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_SOUND_SECOND_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const/16 v0, 0x40

    goto :goto_0

    .line 303
    :cond_3
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 317
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_URI:Landroid/net/Uri;

    .line 327
    :goto_0
    return-object v0

    .line 319
    :cond_0
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_1

    .line 320
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_RINGTONE_SECOND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 321
    :cond_1
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_2

    .line 322
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_NOTIFICATION_SOUND_SECOND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 323
    :cond_2
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_3

    .line 324
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_SOUND_SECOND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 327
    :cond_3
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 246
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 247
    const-string/jumbo v0, "ringtone"

    .line 261
    :goto_0
    return-object v0

    .line 248
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 249
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 250
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 251
    const-string/jumbo v0, "message_sound"

    goto :goto_0

    .line 252
    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    .line 253
    const-string/jumbo v0, "ringtone_second"

    goto :goto_0

    .line 254
    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_4

    .line 255
    const-string/jumbo v0, "notification_sound_second"

    goto :goto_0

    .line 256
    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    .line 257
    const-string/jumbo v0, "message_sound_second"

    goto :goto_0

    .line 258
    :cond_5
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    .line 259
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 261
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 13
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 172
    new-instance v8, Landroid/media/RingtoneManager;

    invoke-direct {v8, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 173
    .local v8, rm:Landroid/media/RingtoneManager;
    invoke-virtual {v8, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 174
    const-string v3, "_display_name=?"

    .line 175
    .local v3, where:Ljava/lang/String;
    const-string v7, ""

    .line 176
    .local v7, defaulttones:Ljava/lang/String;
    const/4 v4, 0x0

    .line 177
    .local v4, whereArgs:[Ljava/lang/String;
    if-ne p1, v11, :cond_2

    .line 178
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    :cond_0
    :goto_0
    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #whereArgs:[Ljava/lang/String;
    aput-object v7, v4, v10

    .line 189
    .restart local v4       #whereArgs:[Ljava/lang/String;
    const-string v0, "ZteRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidRingtoneUri().defaulttones = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 191
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "_display_name"

    aput-object v0, v2, v11

    .line 192
    .local v2, COLUMNS:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 194
    const-string v0, "ZteRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the number is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v9, 0x0

    .line 196
    .local v9, uri:Landroid/net/Uri;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 198
    const-string v0, "ZteRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidRingtoneUri().uri = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v2           #COLUMNS:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 179
    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    if-eq p1, v12, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 180
    :cond_3
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 181
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 182
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 183
    :cond_5
    const/16 v0, 0x10

    if-ne p1, v0, :cond_6

    .line 184
    const-string v7, "Beauty.ogg"

    goto/16 :goto_0

    .line 185
    :cond_6
    const/16 v0, 0x20

    if-eq p1, v0, :cond_7

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    .line 186
    :cond_7
    const-string v7, "Bird.ogg"

    goto/16 :goto_0

    .line 204
    :cond_8
    invoke-static {p0}, Landroid/media/RingtoneManager;->getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v9

    .line 205
    .restart local v9       #uri:Landroid/net/Uri;
    goto :goto_1
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    const/4 v5, 0x0

    .line 218
    const-string v4, "ZteRingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setActualDefaultRingtoneUri type= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ringtoneUri= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Landroid/media/ZteRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, setting:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v6, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    invoke-static {p1}, Landroid/media/ZteRingtoneManager;->getDataForType(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, data:Ljava/lang/String;
    const-string v4, "ZteRingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setActualDefaultRingtoneUri data= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez p2, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .end local v1           #data:Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 221
    goto :goto_1

    .line 230
    .restart local v1       #data:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    .line 231
    invoke-static {p0, p1, p2}, Landroid/media/ZteRingtoneManager;->getCursor(Landroid/content/Context;ILandroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, cursor:Landroid/database/Cursor;
    const-string v4, "ZteRingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setActualDefaultRingtoneUri cursor= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, ringtoneData:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 236
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    const-string v4, "ZteRingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setActualDefaultRingtoneUri ringtoneData= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v2, :cond_4

    move-object v5, v2

    :cond_4
    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public inferStreamType()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/media/ZteRingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 348
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 339
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 345
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 333
    iput p1, p0, Landroid/media/ZteRingtoneManager;->mType:I

    .line 334
    return-void
.end method
