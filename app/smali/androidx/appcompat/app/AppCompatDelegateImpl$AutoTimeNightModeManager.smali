.class Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTimeNightModeManager"
.end annotation


# instance fields
.field public final c:Landroidx/appcompat/app/TwilightManager;

.field public final synthetic d:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->c:Landroidx/appcompat/app/TwilightManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.TIME_SET"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.TIME_TICK"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final c()I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->c:Landroidx/appcompat/app/TwilightManager;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/appcompat/app/TwilightManager;->c:Landroidx/appcompat/app/TwilightManager$TwilightState;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/appcompat/app/TwilightManager;->b:Landroid/location/LocationManager;

    .line 8
    .line 9
    iget-wide v4, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->b:J

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    cmp-long v4, v4, v6

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->a:Z

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_0
    iget-object v4, v0, Landroidx/appcompat/app/TwilightManager;->a:Landroid/content/Context;

    .line 25
    .line 26
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 27
    .line 28
    invoke-static {v4, v0}, Landroidx/core/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v6, "Failed to get last known location"

    .line 33
    .line 34
    const-string v7, "TwilightManager"

    .line 35
    .line 36
    const/4 v8, 0x0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "network"

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :cond_1
    move-object v0, v8

    .line 57
    :goto_0
    move-object v9, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v9, v8

    .line 60
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 61
    .line 62
    invoke-static {v4, v0}, Landroidx/core/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    const-string v0, "gps"

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 77
    .line 78
    .line 79
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 86
    .line 87
    if-eqz v9, :cond_4

    .line 88
    .line 89
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    cmp-long v0, v3, v10

    .line 98
    .line 99
    if-lez v0, :cond_5

    .line 100
    .line 101
    :goto_3
    move-object v9, v8

    .line 102
    goto :goto_4

    .line 103
    :cond_4
    if-eqz v8, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 107
    if-eqz v9, :cond_c

    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v15

    .line 113
    sget-object v3, Landroidx/appcompat/app/TwilightCalculator;->d:Landroidx/appcompat/app/TwilightCalculator;

    .line 114
    .line 115
    if-nez v3, :cond_6

    .line 116
    .line 117
    new-instance v3, Landroidx/appcompat/app/TwilightCalculator;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 120
    .line 121
    .line 122
    sput-object v3, Landroidx/appcompat/app/TwilightCalculator;->d:Landroidx/appcompat/app/TwilightCalculator;

    .line 123
    .line 124
    :cond_6
    sget-object v17, Landroidx/appcompat/app/TwilightCalculator;->d:Landroidx/appcompat/app/TwilightCalculator;

    .line 125
    .line 126
    const-wide/32 v3, 0x5265c00

    .line 127
    .line 128
    .line 129
    sub-long v22, v15, v3

    .line 130
    .line 131
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 132
    .line 133
    .line 134
    move-result-wide v18

    .line 135
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 136
    .line 137
    .line 138
    move-result-wide v20

    .line 139
    invoke-virtual/range {v17 .. v23}, Landroidx/appcompat/app/TwilightCalculator;->a(DDJ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 147
    .line 148
    .line 149
    move-result-wide v13

    .line 150
    move-object/from16 v10, v17

    .line 151
    .line 152
    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/TwilightCalculator;->a(DDJ)V

    .line 153
    .line 154
    .line 155
    iget v6, v10, Landroidx/appcompat/app/TwilightCalculator;->c:I

    .line 156
    .line 157
    if-ne v6, v5, :cond_7

    .line 158
    .line 159
    move v0, v5

    .line 160
    :cond_7
    iget-wide v6, v10, Landroidx/appcompat/app/TwilightCalculator;->b:J

    .line 161
    .line 162
    iget-wide v11, v10, Landroidx/appcompat/app/TwilightCalculator;->a:J

    .line 163
    .line 164
    add-long v22, v15, v3

    .line 165
    .line 166
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 167
    .line 168
    .line 169
    move-result-wide v18

    .line 170
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 171
    .line 172
    .line 173
    move-result-wide v20

    .line 174
    move-object/from16 v17, v10

    .line 175
    .line 176
    invoke-virtual/range {v17 .. v23}, Landroidx/appcompat/app/TwilightCalculator;->a(DDJ)V

    .line 177
    .line 178
    .line 179
    iget-wide v3, v10, Landroidx/appcompat/app/TwilightCalculator;->b:J

    .line 180
    .line 181
    const-wide/16 v8, -0x1

    .line 182
    .line 183
    cmp-long v10, v6, v8

    .line 184
    .line 185
    if-eqz v10, :cond_b

    .line 186
    .line 187
    cmp-long v8, v11, v8

    .line 188
    .line 189
    if-nez v8, :cond_8

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    cmp-long v8, v15, v11

    .line 193
    .line 194
    if-lez v8, :cond_9

    .line 195
    .line 196
    move-wide v6, v3

    .line 197
    goto :goto_5

    .line 198
    :cond_9
    cmp-long v3, v15, v6

    .line 199
    .line 200
    if-lez v3, :cond_a

    .line 201
    .line 202
    move-wide v6, v11

    .line 203
    :cond_a
    :goto_5
    const-wide/32 v3, 0xea60

    .line 204
    .line 205
    .line 206
    add-long/2addr v6, v3

    .line 207
    goto :goto_7

    .line 208
    :cond_b
    :goto_6
    const-wide/32 v3, 0x2932e00

    .line 209
    .line 210
    .line 211
    add-long v6, v15, v3

    .line 212
    .line 213
    :goto_7
    iput-boolean v0, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->a:Z

    .line 214
    .line 215
    iput-wide v6, v2, Landroidx/appcompat/app/TwilightManager$TwilightState;->b:J

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_c
    const-string v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 219
    .line 220
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/16 v3, 0xb

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    const/4 v3, 0x6

    .line 234
    if-lt v2, v3, :cond_d

    .line 235
    .line 236
    const/16 v3, 0x16

    .line 237
    .line 238
    if-lt v2, v3, :cond_e

    .line 239
    .line 240
    :cond_d
    move v0, v5

    .line 241
    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 242
    .line 243
    const/4 v0, 0x2

    .line 244
    return v0

    .line 245
    :cond_f
    return v5
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->H(ZZ)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
