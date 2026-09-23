.class final Landroidx/mediarouter/media/GlobalMediaRouter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;,
        Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;,
        Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;,
        Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;,
        Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;,
        Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;,
        Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnectionMessageParams;,
        Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;
    }
.end annotation


# static fields
.field public static final synthetic F:I


# instance fields
.field public A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field public B:I

.field public C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

.field public D:Landroid/support/v4/media/session/MediaSessionCompat;

.field public final E:Landroidx/mediarouter/media/GlobalMediaRouter$1;

.field public final a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

.field public final b:Ljava/util/HashMap;

.field public final c:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

.field public d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field public f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

.field public final g:Landroid/content/Context;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

.field public final o:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

.field public final p:Z

.field public final q:Z

.field public r:Landroidx/mediarouter/media/MediaRoute2Provider;

.field public final s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

.field public final t:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

.field public u:Landroidx/mediarouter/media/MediaRouterParams;

.field public v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field public z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "AxMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->j:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->k:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->l:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->m:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    iput v1, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->c:I

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    iput v2, v0, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->d:I

    .line 70
    .line 71
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->n:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 72
    .line 73
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->o:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    .line 79
    .line 80
    new-instance v0, Landroidx/mediarouter/media/GlobalMediaRouter$1;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$1;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->E:Landroidx/mediarouter/media/GlobalMediaRouter$1;

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->g:Landroid/content/Context;

    .line 88
    .line 89
    const-string v0, "activity"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/app/ActivityManager;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->p:Z

    .line 102
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    const/16 v3, 0x1e

    .line 107
    .line 108
    if-lt v0, v3, :cond_0

    .line 109
    .line 110
    sget v4, Landroidx/mediarouter/media/MediaTransferReceiver;->a:I

    .line 111
    .line 112
    new-instance v4, Landroid/content/Intent;

    .line 113
    .line 114
    const-class v5, Landroidx/mediarouter/media/MediaTransferReceiver;

    .line 115
    .line 116
    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-lez v4, :cond_0

    .line 139
    .line 140
    move v4, v2

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    move v4, v1

    .line 143
    :goto_0
    iput-boolean v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->q:Z

    .line 144
    .line 145
    sget v5, Landroidx/mediarouter/media/SystemRoutingUsingMediaRouter2Receiver;->a:I

    .line 146
    .line 147
    new-instance v5, Landroid/content/Intent;

    .line 148
    .line 149
    const-class v6, Landroidx/mediarouter/media/SystemRoutingUsingMediaRouter2Receiver;

    .line 150
    .line 151
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v6, v5, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    if-lt v0, v3, :cond_1

    .line 174
    .line 175
    if-eqz v4, :cond_1

    .line 176
    .line 177
    new-instance v3, Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 178
    .line 179
    new-instance v4, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;

    .line 180
    .line 181
    invoke-direct {v4, p0}, Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v3, p1, v4}, Landroidx/mediarouter/media/MediaRoute2Provider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/GlobalMediaRouter$Mr2ProviderCallback;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_1
    move-object v3, v5

    .line 189
    :goto_1
    iput-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 190
    .line 191
    const/16 v3, 0x18

    .line 192
    .line 193
    if-lt v0, v3, :cond_2

    .line 194
    .line 195
    new-instance v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$Api24Impl;

    .line 196
    .line 197
    invoke-direct {v0, p1, p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    new-instance v0, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 202
    .line 203
    invoke-direct {v0, p1, p0}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$SyncCallback;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 207
    .line 208
    new-instance v3, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 209
    .line 210
    new-instance v4, Landroidx/mediarouter/media/a;

    .line 211
    .line 212
    invoke-direct {v4, v1, p0}, Landroidx/mediarouter/media/a;-><init>(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {v3, v4}, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;-><init>(Landroidx/mediarouter/media/a;)V

    .line 216
    .line 217
    .line 218
    iput-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->t:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 219
    .line 220
    invoke-virtual {p0, v0, v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->a(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 224
    .line 225
    if-eqz v0, :cond_3

    .line 226
    .line 227
    invoke-virtual {p0, v0, v2}, Landroidx/mediarouter/media/GlobalMediaRouter;->a(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 228
    .line 229
    .line 230
    :cond_3
    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 231
    .line 232
    invoke-direct {v0, p1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher$Callback;)V

    .line 233
    .line 234
    .line 235
    iput-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->c:Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;

    .line 236
    .line 237
    iget-boolean p1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->g:Z

    .line 238
    .line 239
    if-nez p1, :cond_4

    .line 240
    .line 241
    iput-boolean v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->g:Z

    .line 242
    .line 243
    new-instance p1, Landroid/content/IntentFilter;

    .line 244
    .line 245
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 254
    .line 255
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 269
    .line 270
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string v1, "package"

    .line 274
    .line 275
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->a:Landroid/content/Context;

    .line 279
    .line 280
    iget-object v2, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->h:Landroid/content/BroadcastReceiver;

    .line 281
    .line 282
    iget-object v3, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->c:Landroid/os/Handler;

    .line 283
    .line 284
    invoke-virtual {v1, v2, p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    iget-object p1, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProviderWatcher;->i:Ljava/lang/Runnable;

    .line 288
    .line 289
    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    .line 291
    .line 292
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/MediaRouteProvider;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->d(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;-><init>(Landroidx/mediarouter/media/MediaRouteProvider;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 18
    .line 19
    const/16 v1, 0x201

    .line 20
    .line 21
    invoke-virtual {p2, v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p1, Landroidx/mediarouter/media/MediaRouteProvider;->k:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p2}, Landroidx/mediarouter/media/GlobalMediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->o:Landroidx/mediarouter/media/GlobalMediaRouter$ProviderCallback;

    .line 33
    .line 34
    iput-object p2, p1, Landroidx/mediarouter/media/MediaRouteProvider;->h:Landroidx/mediarouter/media/MediaRouteProvider$Callback;

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProvider;->g(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final b(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean p1, p1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->c:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    move-object v1, p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, ":"

    .line 16
    .line 17
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->k:Ljava/util/HashMap;

    .line 22
    .line 23
    if-nez p1, :cond_7

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_1
    const/4 v6, -0x1

    .line 34
    if-ge v5, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 41
    .line 42
    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v5, v6

    .line 55
    :goto_2
    if-gez v5, :cond_3

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_3
    const-string v3, " isn\'t unique in "

    .line 59
    .line 60
    const-string v5, " or we\'re trying to assign a unique ID for an already added route"

    .line 61
    .line 62
    const-string v7, "Either "

    .line 63
    .line 64
    invoke-static {v7, p2, v3, v0, v5}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string v5, "AxMediaRouter"

    .line 69
    .line 70
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    :goto_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, "_"

    .line 85
    .line 86
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    move v8, v4

    .line 101
    :goto_4
    if-ge v8, v7, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 108
    .line 109
    iget-object v9, v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    move v8, v6

    .line 122
    :goto_5
    if-gez v8, :cond_6

    .line 123
    .line 124
    new-instance p1, Landroidx/core/util/Pair;

    .line 125
    .line 126
    invoke-direct {p1, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-object v5

    .line 133
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    :goto_6
    new-instance p1, Landroidx/core/util/Pair;

    .line 137
    .line 138
    invoke-direct {p1, v0, p2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    return-object v1
.end method

.method public final c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 19
    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 27
    .line 28
    if-ne v4, v5, :cond_0

    .line 29
    .line 30
    const-string v4, "android.media.intent.category.LIVE_AUDIO"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    const-string v4, "android.media.intent.category.LIVE_VIDEO"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 54
    .line 55
    return-object v0
.end method

.method public final d(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 17
    .line 18
    iget-object v4, v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 19
    .line 20
    if-ne v4, p1, :cond_0

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->j:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public final f(Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;)Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final g(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    instance-of v0, p1, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->o()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->f(Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;)Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->b:Ljava/util/HashMap;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->j:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnection;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    throw v1
.end method

.method public final h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouterParams;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 39
    .line 40
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->b:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-virtual {v4, v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 110
    .line 111
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_4

    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v5, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 126
    .line 127
    iget-object v5, v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v3, v4, v5}, Landroidx/mediarouter/media/MediaRouteProvider;->d(Ljava/lang/String;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->e()V

    .line 136
    .line 137
    .line 138
    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    :goto_3
    return-void
.end method

.method public final k(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter;->d(Landroidx/mediarouter/media/MediaRouteProvider;)Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p1, Landroidx/mediarouter/media/MediaRouteProvider;->h:Landroidx/mediarouter/media/MediaRouteProvider$Callback;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->g(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->p(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 23
    .line 24
    const/16 v1, 0x202

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->l:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final l(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "AxMediaRouter"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p3, "Ignoring attempt to select removed route: "

    .line 14
    .line 15
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Ignoring attempt to select disabled route: "

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 52
    .line 53
    if-ne v0, p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->v:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, 0x1

    .line 77
    if-ne v2, v3, :cond_6

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->x:Landroidx/collection/ArrayMap;

    .line 80
    .line 81
    iget-object v2, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->b:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const/4 v0, 0x4

    .line 95
    :goto_1
    const/4 v2, 0x3

    .line 96
    if-eq v0, v2, :cond_5

    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    if-ne v0, v2, :cond_6

    .line 100
    .line 101
    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p3, "Ignoring attempt to select selected route: "

    .line 104
    .line 105
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v1, 0x1e

    .line 122
    .line 123
    if-lt v0, v1, :cond_7

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 130
    .line 131
    if-ne v0, v1, :cond_7

    .line 132
    .line 133
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 134
    .line 135
    if-eq v0, p1, :cond_7

    .line 136
    .line 137
    iget-object p1, p1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->m(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/mediarouter/media/GlobalMediaRouter;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v5, p3

    .line 6
    .line 7
    const-string v0, "AxMediaRouter"

    .line 8
    .line 9
    iget-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->g:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 12
    .line 13
    if-ne v4, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x1

    .line 20
    if-ne v2, v4, :cond_1

    .line 21
    .line 22
    move v4, v7

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v4, v6

    .line 25
    :goto_0
    iget-object v8, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 26
    .line 27
    const/4 v9, 0x3

    .line 28
    const/4 v10, 0x0

    .line 29
    if-eqz v8, :cond_6

    .line 30
    .line 31
    if-eqz v4, :cond_6

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v11, "- Stacktrace: ["

    .line 44
    .line 45
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move v11, v9

    .line 49
    :cond_2
    :goto_1
    array-length v12, v4

    .line 50
    if-ge v11, v12, :cond_3

    .line 51
    .line 52
    aget-object v12, v4, v11

    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v13, "."

    .line 62
    .line 63
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v13, ":"

    .line 74
    .line 75
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v11, v11, 0x1

    .line 86
    .line 87
    array-length v12, v4

    .line 88
    if-ge v11, v12, :cond_2

    .line 89
    .line 90
    const-string v12, ", "

    .line 91
    .line 92
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-string v4, "]"

    .line 97
    .line 98
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    .line 107
    iget-object v11, v4, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    iget-object v12, v12, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 117
    .line 118
    if-ne v12, v4, :cond_4

    .line 119
    .line 120
    move v4, v7

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    move v4, v6

    .line 123
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v11, "(BT="

    .line 132
    .line 133
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, ", syncMediaRoute1Provider="

    .line 140
    .line 141
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, ")"

    .line 148
    .line 149
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    move-object v4, v10

    .line 158
    :goto_3
    const-string v11, "Changing selection("

    .line 159
    .line 160
    const-string v12, ") to default while BT is available: pkgName="

    .line 161
    .line 162
    invoke-static {v11, v4, v12}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    :cond_6
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 184
    .line 185
    if-eqz v4, :cond_7

    .line 186
    .line 187
    iput-object v10, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 188
    .line 189
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 190
    .line 191
    if-eqz v4, :cond_7

    .line 192
    .line 193
    invoke-virtual {v4, v9}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 194
    .line 195
    .line 196
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 197
    .line 198
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 199
    .line 200
    .line 201
    iput-object v10, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 202
    .line 203
    :cond_7
    invoke-virtual {v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_c

    .line 208
    .line 209
    iget-object v4, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a:Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 210
    .line 211
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->e:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 212
    .line 213
    if-eqz v4, :cond_c

    .line 214
    .line 215
    iget-boolean v4, v4, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->b:Z

    .line 216
    .line 217
    if-eqz v4, :cond_c

    .line 218
    .line 219
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    iget-object v8, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 224
    .line 225
    new-instance v9, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;

    .line 226
    .line 227
    invoke-direct {v9}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    iget-object v12, v9, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;->a:Landroid/os/Bundle;

    .line 235
    .line 236
    const-string v13, "clientPackageName"

    .line 237
    .line 238
    invoke-virtual {v12, v13, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    new-instance v11, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;

    .line 242
    .line 243
    iget-object v9, v9, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;->a:Landroid/os/Bundle;

    .line 244
    .line 245
    invoke-direct {v11, v9}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;-><init>(Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v8, v11}, Landroidx/mediarouter/media/MediaRouteProvider;->a(Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    if-eqz v13, :cond_b

    .line 253
    .line 254
    invoke-static {v3}, Landroidx/core/content/ContextCompat;->d(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v14, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->E:Landroidx/mediarouter/media/GlobalMediaRouter$1;

    .line 259
    .line 260
    iget-object v4, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->a:Ljava/lang/Object;

    .line 261
    .line 262
    monitor-enter v4

    .line 263
    if-eqz v0, :cond_a

    .line 264
    .line 265
    if-eqz v14, :cond_9

    .line 266
    .line 267
    :try_start_0
    iput-object v0, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->b:Ljava/util/concurrent/Executor;

    .line 268
    .line 269
    iput-object v14, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->c:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    .line 270
    .line 271
    iget-object v0, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->e:Ljava/util/ArrayList;

    .line 272
    .line 273
    if-eqz v0, :cond_8

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-nez v0, :cond_8

    .line 280
    .line 281
    iget-object v15, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->d:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 282
    .line 283
    iget-object v0, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->e:Ljava/util/ArrayList;

    .line 284
    .line 285
    iput-object v10, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->d:Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 286
    .line 287
    iput-object v10, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->e:Ljava/util/ArrayList;

    .line 288
    .line 289
    iget-object v3, v13, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->b:Ljava/util/concurrent/Executor;

    .line 290
    .line 291
    new-instance v12, Landroidx/mediarouter/media/d;

    .line 292
    .line 293
    const/16 v17, 0x1

    .line 294
    .line 295
    move-object/from16 v16, v0

    .line 296
    .line 297
    invoke-direct/range {v12 .. v17}, Landroidx/mediarouter/media/d;-><init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/ArrayList;I)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v3, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    goto :goto_5

    .line 306
    :cond_8
    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iput-object v2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->x:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 308
    .line 309
    iput-object v13, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->y:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 310
    .line 311
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->e()V

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :cond_9
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 316
    .line 317
    const-string v2, "Listener shouldn\'t be null"

    .line 318
    .line 319
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 324
    .line 325
    const-string v2, "Executor shouldn\'t be null"

    .line 326
    .line 327
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    throw v0

    .line 333
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v8, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    .line 336
    .line 337
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_c
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iget-object v4, v2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 355
    .line 356
    new-instance v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;

    .line 357
    .line 358
    invoke-direct {v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    iget-object v9, v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;->a:Landroid/os/Bundle;

    .line 366
    .line 367
    const-string v11, "clientPackageName"

    .line 368
    .line 369
    invoke-virtual {v9, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    new-instance v3, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;

    .line 373
    .line 374
    iget-object v8, v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions$Builder;->a:Landroid/os/Bundle;

    .line 375
    .line 376
    invoke-direct {v3, v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;-><init>(Landroid/os/Bundle;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v4, v3}, Landroidx/mediarouter/media/MediaRouteProvider;->c(Ljava/lang/String;Landroidx/mediarouter/media/MediaRouteProvider$RouteControllerOptions;)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-eqz v3, :cond_d

    .line 384
    .line 385
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->e()V

    .line 386
    .line 387
    .line 388
    :cond_d
    iget-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 389
    .line 390
    if-nez v0, :cond_e

    .line 391
    .line 392
    iput-object v2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 393
    .line 394
    iput-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 395
    .line 396
    iget-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    new-instance v3, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 402
    .line 403
    invoke-direct {v3, v10, v2, v5}, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;-><init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    .line 404
    .line 405
    .line 406
    const/16 v2, 0x106

    .line 407
    .line 408
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    move/from16 v4, p2

    .line 413
    .line 414
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :cond_e
    move/from16 v4, p2

    .line 421
    .line 422
    iget-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 423
    .line 424
    if-eqz v0, :cond_11

    .line 425
    .line 426
    iget-object v8, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 427
    .line 428
    iget-boolean v9, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 429
    .line 430
    if-nez v9, :cond_10

    .line 431
    .line 432
    iget-boolean v9, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 433
    .line 434
    if-eqz v9, :cond_f

    .line 435
    .line 436
    goto :goto_6

    .line 437
    :cond_f
    iput-boolean v7, v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 438
    .line 439
    if-eqz v8, :cond_10

    .line 440
    .line 441
    invoke-virtual {v8, v6}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 445
    .line 446
    .line 447
    :cond_10
    :goto_6
    iput-object v10, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 448
    .line 449
    :cond_11
    new-instance v0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 450
    .line 451
    const/4 v6, 0x0

    .line 452
    const/4 v7, 0x0

    .line 453
    invoke-direct/range {v0 .. v7}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;IZLandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V

    .line 454
    .line 455
    .line 456
    iput-object v0, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 457
    .line 458
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a()V

    .line 459
    .line 460
    .line 461
    return-void
.end method

.method public final n()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->t:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    iput-wide v3, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->c:J

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->e:Z

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    iput-wide v6, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->d:J

    .line 22
    .line 23
    iget-object v6, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->a:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->b:Landroidx/mediarouter/media/a;

    .line 26
    .line 27
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->h:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    move v7, v5

    .line 37
    move v8, v7

    .line 38
    :goto_0
    add-int/lit8 v6, v6, -0x1

    .line 39
    .line 40
    iget-boolean v9, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->p:Z

    .line 41
    .line 42
    if-ltz v6, :cond_9

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Landroidx/mediarouter/media/MediaRouter;

    .line 55
    .line 56
    if-nez v10, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_0
    move-object/from16 v18, v1

    .line 62
    .line 63
    move-object/from16 v19, v2

    .line 64
    .line 65
    move-wide/from16 v16, v3

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_1
    iget-object v10, v10, Landroidx/mediarouter/media/MediaRouter;->b:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    add-int/2addr v7, v11

    .line 76
    move v12, v5

    .line 77
    :goto_1
    if-ge v12, v11, :cond_0

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    check-cast v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 84
    .line 85
    iget-object v14, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 86
    .line 87
    if-eqz v14, :cond_8

    .line 88
    .line 89
    invoke-virtual {v14}, Landroidx/mediarouter/media/MediaRouteSelector;->c()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v1, v14}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->a(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    iget v14, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->d:I

    .line 97
    .line 98
    const/4 v15, 0x1

    .line 99
    and-int/2addr v14, v15

    .line 100
    if-eqz v14, :cond_2

    .line 101
    .line 102
    move v14, v15

    .line 103
    :goto_2
    move-wide/from16 v16, v3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_2
    move v14, v5

    .line 107
    goto :goto_2

    .line 108
    :goto_3
    iget-wide v3, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->e:J

    .line 109
    .line 110
    iget-object v5, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->t:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 111
    .line 112
    if-nez v14, :cond_3

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-object/from16 v18, v1

    .line 118
    .line 119
    move-object/from16 v19, v2

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_3
    move-object/from16 v18, v1

    .line 123
    .line 124
    move-object/from16 v19, v2

    .line 125
    .line 126
    iget-wide v1, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->d:J

    .line 127
    .line 128
    sub-long v20, v1, v3

    .line 129
    .line 130
    const-wide/16 v22, 0x7530

    .line 131
    .line 132
    cmp-long v20, v20, v22

    .line 133
    .line 134
    if-ltz v20, :cond_4

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    move-wide/from16 v20, v1

    .line 138
    .line 139
    iget-wide v1, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->c:J

    .line 140
    .line 141
    add-long v3, v3, v22

    .line 142
    .line 143
    sub-long v3, v3, v20

    .line 144
    .line 145
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    iput-wide v1, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->c:J

    .line 150
    .line 151
    iput-boolean v15, v5, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->e:Z

    .line 152
    .line 153
    :goto_4
    if-eqz v14, :cond_5

    .line 154
    .line 155
    move v8, v15

    .line 156
    :cond_5
    iget v1, v13, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->d:I

    .line 157
    .line 158
    and-int/lit8 v2, v1, 0x4

    .line 159
    .line 160
    if-eqz v2, :cond_6

    .line 161
    .line 162
    if-nez v9, :cond_6

    .line 163
    .line 164
    move v8, v15

    .line 165
    :cond_6
    and-int/lit8 v1, v1, 0x8

    .line 166
    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    move v8, v15

    .line 170
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 171
    .line 172
    move-wide/from16 v3, v16

    .line 173
    .line 174
    move-object/from16 v1, v18

    .line 175
    .line 176
    move-object/from16 v2, v19

    .line 177
    .line 178
    const/4 v5, 0x0

    .line 179
    goto :goto_1

    .line 180
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    const-string v2, "selector must not be null"

    .line 183
    .line 184
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :goto_5
    move-wide/from16 v3, v16

    .line 189
    .line 190
    move-object/from16 v1, v18

    .line 191
    .line 192
    move-object/from16 v2, v19

    .line 193
    .line 194
    const/4 v5, 0x0

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_9
    move-object/from16 v18, v1

    .line 198
    .line 199
    move-wide/from16 v16, v3

    .line 200
    .line 201
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->t:Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;

    .line 202
    .line 203
    iget-boolean v2, v1, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->e:Z

    .line 204
    .line 205
    if-eqz v2, :cond_a

    .line 206
    .line 207
    iget-wide v2, v1, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->c:J

    .line 208
    .line 209
    cmp-long v4, v2, v16

    .line 210
    .line 211
    if-lez v4, :cond_a

    .line 212
    .line 213
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->a:Landroid/os/Handler;

    .line 214
    .line 215
    iget-object v5, v1, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->b:Landroidx/mediarouter/media/a;

    .line 216
    .line 217
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    .line 219
    .line 220
    :cond_a
    iget-boolean v1, v1, Landroidx/mediarouter/media/MediaRouterActiveScanThrottlingHelper;->e:Z

    .line 221
    .line 222
    iput v7, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->B:I

    .line 223
    .line 224
    if-eqz v8, :cond_b

    .line 225
    .line 226
    invoke-virtual/range {v18 .. v18}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->c()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    goto :goto_6

    .line 231
    :cond_b
    sget-object v2, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 232
    .line 233
    :goto_6
    invoke-virtual/range {v18 .. v18}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->c()Landroidx/mediarouter/media/MediaRouteSelector;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const/4 v5, 0x0

    .line 242
    if-nez v4, :cond_c

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_c
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 246
    .line 247
    if-eqz v4, :cond_d

    .line 248
    .line 249
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->a()V

    .line 250
    .line 251
    .line 252
    iget-object v4, v4, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->b:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 253
    .line 254
    invoke-virtual {v4, v3}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_d

    .line 259
    .line 260
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 261
    .line 262
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->b()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-ne v4, v1, :cond_d

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_d
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_f

    .line 274
    .line 275
    if-nez v1, :cond_f

    .line 276
    .line 277
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 278
    .line 279
    if-nez v3, :cond_e

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_e
    iput-object v5, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_f
    new-instance v4, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 286
    .line 287
    invoke-direct {v4, v3, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 288
    .line 289
    .line 290
    iput-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 291
    .line 292
    :goto_7
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 293
    .line 294
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->A:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 295
    .line 296
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->g(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 297
    .line 298
    .line 299
    :goto_8
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 300
    .line 301
    if-eqz v3, :cond_10

    .line 302
    .line 303
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->a()V

    .line 304
    .line 305
    .line 306
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->b:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 307
    .line 308
    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_10

    .line 313
    .line 314
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 315
    .line 316
    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->b()Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-ne v3, v1, :cond_10

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_10
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteSelector;->d()Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_12

    .line 328
    .line 329
    if-nez v1, :cond_12

    .line 330
    .line 331
    iget-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 332
    .line 333
    if-nez v2, :cond_11

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_11
    iput-object v5, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 337
    .line 338
    goto :goto_9

    .line 339
    :cond_12
    new-instance v3, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 340
    .line 341
    invoke-direct {v3, v2, v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 342
    .line 343
    .line 344
    iput-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 345
    .line 346
    :goto_9
    if-eqz v8, :cond_13

    .line 347
    .line 348
    if-nez v1, :cond_13

    .line 349
    .line 350
    if-eqz v9, :cond_13

    .line 351
    .line 352
    const-string v1, "AxMediaRouter"

    .line 353
    .line 354
    const-string v2, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 355
    .line 356
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :cond_13
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->l:Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    const/4 v5, 0x0

    .line 366
    :goto_a
    if-ge v5, v2, :cond_15

    .line 367
    .line 368
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 373
    .line 374
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 375
    .line 376
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->a:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 377
    .line 378
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 379
    .line 380
    if-ne v3, v4, :cond_14

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_14
    iget-object v4, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->z:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/MediaRouteProvider;->g(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_15
    :goto_b
    return-void
.end method

.method public final o()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v1, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->p:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->n:Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;

    .line 8
    .line 9
    iput v1, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->a:I

    .line 10
    .line 11
    iget v1, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->q:I

    .line 12
    .line 13
    iput v1, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->b:I

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->m()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->o:I

    .line 31
    .line 32
    :goto_0
    iput v0, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->c:I

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 35
    .line 36
    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->m:I

    .line 37
    .line 38
    iput v0, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->d:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->i()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->r:Landroidx/mediarouter/media/MediaRoute2Provider;

    .line 54
    .line 55
    if-ne v0, v4, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRoute2Provider;->j(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->e:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iput-object v1, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->e:Ljava/lang/String;

    .line 67
    .line 68
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->m:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_7

    .line 79
    .line 80
    iget-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 81
    .line 82
    if-eqz v6, :cond_9

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 85
    .line 86
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 87
    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    if-eq v0, v1, :cond_5

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 93
    .line 94
    if-ne v0, v1, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    iget v0, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->c:I

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    if-ne v0, v1, :cond_3

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    :cond_3
    move v7, v3

    .line 104
    iget v8, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->b:I

    .line 105
    .line 106
    iget v9, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->a:I

    .line 107
    .line 108
    iget-object v10, v2, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->e:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v0, v6, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 111
    .line 112
    if-eqz v0, :cond_9

    .line 113
    .line 114
    iget-object v1, v6, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->b:Landroidx/media/VolumeProviderCompat;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    if-nez v7, :cond_4

    .line 119
    .line 120
    if-nez v8, :cond_4

    .line 121
    .line 122
    invoke-virtual {v1, v9}, Landroidx/media/VolumeProviderCompat;->d(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    new-instance v5, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;

    .line 127
    .line 128
    invoke-direct/range {v5 .. v10}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord$1;-><init>(Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;IIILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iput-object v5, v6, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->b:Landroidx/media/VolumeProviderCompat;

    .line 132
    .line 133
    invoke-virtual {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter$RemoteControlClientRecord;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_8
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->C:Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;

    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter$MediaSessionRecord;->a()V

    .line 164
    .line 165
    .line 166
    :cond_9
    return-void
.end method

.method public final p(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->e:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 8
    .line 9
    iget-object v4, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eq v3, v2, :cond_14

    .line 12
    .line 13
    iput-object v2, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->e:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v5, "AxMediaRouter"

    .line 18
    .line 19
    iget-object v6, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v9, v2, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->a:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    const/4 v11, 0x0

    .line 30
    :goto_0
    if-ge v11, v10, :cond_3

    .line 31
    .line 32
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    check-cast v12, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 37
    .line 38
    if-eqz v12, :cond_1

    .line 39
    .line 40
    invoke-virtual {v12}, Landroidx/mediarouter/media/MediaRouteDescriptor;->i()Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-nez v12, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    iget-object v10, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 51
    .line 52
    iget-object v10, v10, Landroidx/mediarouter/media/MediaRouteProvider;->k:Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    .line 53
    .line 54
    if-ne v2, v10, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v12, 0x0

    .line 58
    const/16 v16, 0x1

    .line 59
    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :cond_3
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v10, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-eqz v13, :cond_d

    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    check-cast v13, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 89
    .line 90
    if-eqz v13, :cond_4

    .line 91
    .line 92
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->i()Z

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-nez v15, :cond_5

    .line 97
    .line 98
    :cond_4
    move-object/from16 v17, v9

    .line 99
    .line 100
    move/from16 v18, v12

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    const/16 v16, 0x1

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_5
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->f()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    const/16 v16, 0x1

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    const/4 v14, 0x0

    .line 118
    :goto_4
    if-ge v14, v8, :cond_7

    .line 119
    .line 120
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v17

    .line 124
    move-object/from16 v7, v17

    .line 125
    .line 126
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 127
    .line 128
    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_6

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    const/4 v14, -0x1

    .line 141
    :goto_5
    if-gez v14, :cond_9

    .line 142
    .line 143
    invoke-virtual {v0, v1, v15}, Landroidx/mediarouter/media/GlobalMediaRouter;->b(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    new-instance v8, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 148
    .line 149
    iget-object v14, v13, Landroidx/mediarouter/media/MediaRouteDescriptor;->a:Landroid/os/Bundle;

    .line 150
    .line 151
    move-object/from16 v17, v9

    .line 152
    .line 153
    const-string v9, "isSystemRoute"

    .line 154
    .line 155
    move/from16 v18, v12

    .line 156
    .line 157
    const/4 v12, 0x0

    .line 158
    invoke-virtual {v14, v9, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    invoke-direct {v8, v1, v15, v7, v9}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;-><init>(Landroidx/mediarouter/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v7, v11, 0x1

    .line 166
    .line 167
    invoke-virtual {v4, v11, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->d()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-nez v9, :cond_8

    .line 182
    .line 183
    new-instance v9, Landroidx/core/util/Pair;

    .line 184
    .line 185
    invoke-direct {v9, v8, v13}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    invoke-virtual {v8, v13}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 193
    .line 194
    .line 195
    const/16 v9, 0x101

    .line 196
    .line 197
    invoke-virtual {v6, v9, v8}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :goto_6
    move v11, v7

    .line 201
    goto :goto_8

    .line 202
    :cond_9
    move-object/from16 v17, v9

    .line 203
    .line 204
    move/from16 v18, v12

    .line 205
    .line 206
    const/4 v12, 0x0

    .line 207
    if-ge v14, v11, :cond_a

    .line 208
    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v8, "Ignoring route descriptor with duplicate id: "

    .line 212
    .line 213
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_a
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 232
    .line 233
    add-int/lit8 v8, v11, 0x1

    .line 234
    .line 235
    invoke-static {v4, v14, v11}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Landroidx/mediarouter/media/MediaRouteDescriptor;->d()Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-nez v9, :cond_b

    .line 247
    .line 248
    new-instance v9, Landroidx/core/util/Pair;

    .line 249
    .line 250
    invoke-direct {v9, v7, v13}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_b
    invoke-virtual {v0, v7, v13}, Landroidx/mediarouter/media/GlobalMediaRouter;->q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_c

    .line 262
    .line 263
    iget-object v9, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 264
    .line 265
    if-ne v7, v9, :cond_c

    .line 266
    .line 267
    move v11, v8

    .line 268
    move/from16 v18, v16

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_c
    :goto_7
    move v11, v8

    .line 272
    :goto_8
    move-object/from16 v9, v17

    .line 273
    .line 274
    move/from16 v12, v18

    .line 275
    .line 276
    goto/16 :goto_3

    .line 277
    .line 278
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v8, "Ignoring invalid route descriptor: "

    .line 281
    .line 282
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_d
    move/from16 v18, v12

    .line 297
    .line 298
    const/4 v12, 0x0

    .line 299
    const/16 v16, 0x1

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    move v7, v12

    .line 306
    :goto_a
    if-ge v7, v5, :cond_e

    .line 307
    .line 308
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    add-int/lit8 v7, v7, 0x1

    .line 313
    .line 314
    check-cast v8, Landroidx/core/util/Pair;

    .line 315
    .line 316
    iget-object v9, v8, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 319
    .line 320
    iget-object v8, v8, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast v8, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 323
    .line 324
    invoke-virtual {v9, v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 325
    .line 326
    .line 327
    const/16 v8, 0x101

    .line 328
    .line 329
    invoke-virtual {v6, v8, v9}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    move/from16 v7, v18

    .line 338
    .line 339
    :cond_f
    :goto_b
    if-ge v12, v2, :cond_10

    .line 340
    .line 341
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    add-int/lit8 v12, v12, 0x1

    .line 346
    .line 347
    check-cast v5, Landroidx/core/util/Pair;

    .line 348
    .line 349
    iget-object v8, v5, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v8, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 352
    .line 353
    iget-object v5, v5, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v5, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 356
    .line 357
    invoke-virtual {v0, v8, v5}, Landroidx/mediarouter/media/GlobalMediaRouter;->q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_f

    .line 362
    .line 363
    iget-object v5, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 364
    .line 365
    if-ne v8, v5, :cond_f

    .line 366
    .line 367
    move/from16 v7, v16

    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_10
    move v12, v7

    .line 371
    move v7, v11

    .line 372
    goto :goto_e

    .line 373
    :goto_c
    if-eqz v2, :cond_11

    .line 374
    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v8, "Ignoring invalid provider descriptor: "

    .line 378
    .line 379
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    goto :goto_d

    .line 390
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v7, "Ignoring null provider descriptor from "

    .line 393
    .line 394
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object v7, v1, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;->d:Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    .line 398
    .line 399
    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->a:Landroid/content/ComponentName;

    .line 400
    .line 401
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    :goto_d
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move v7, v12

    .line 412
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    add-int/lit8 v2, v2, -0x1

    .line 417
    .line 418
    :goto_f
    if-lt v2, v7, :cond_12

    .line 419
    .line 420
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v5

    .line 424
    check-cast v5, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 425
    .line 426
    const/4 v8, 0x0

    .line 427
    invoke-virtual {v5, v8}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    add-int/lit8 v2, v2, -0x1

    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_12
    invoke-virtual {v0, v12}, Landroidx/mediarouter/media/GlobalMediaRouter;->r(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    add-int/lit8 v2, v2, -0x1

    .line 444
    .line 445
    :goto_10
    if-lt v2, v7, :cond_13

    .line 446
    .line 447
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    check-cast v3, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 452
    .line 453
    const/16 v5, 0x102

    .line 454
    .line 455
    invoke-virtual {v6, v5, v3}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    add-int/lit8 v2, v2, -0x1

    .line 459
    .line 460
    goto :goto_10

    .line 461
    :cond_13
    const/16 v2, 0x203

    .line 462
    .line 463
    invoke-virtual {v6, v2, v1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    :cond_14
    return-void
.end method

.method public final q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteDescriptor;)I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->j(Landroidx/mediarouter/media/MediaRouteDescriptor;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x103

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x104

    .line 23
    .line 24
    invoke-virtual {v1, v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    and-int/lit8 v0, p2, 0x4

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const/16 v0, 0x105

    .line 32
    .line 33
    invoke-virtual {v1, v0, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return p2
.end method

.method public final r(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AxMediaRouter"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Clearing the default route because it is no longer selectable: "

    .line 17
    .line 18
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 38
    .line 39
    iget-object v4, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->i:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    move v6, v5

    .line 49
    :cond_1
    if-ge v6, v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 58
    .line 59
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-ne v8, v3, :cond_1

    .line 64
    .line 65
    iget-object v8, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string v9, "DEFAULT_ROUTE"

    .line 68
    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_1

    .line 80
    .line 81
    iput-object v7, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "Found default route: "

    .line 86
    .line 87
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 91
    .line 92
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v6, "Clearing the bluetooth route because it is no longer selectable: "

    .line 115
    .line 116
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    move v1, v5

    .line 142
    :cond_4
    if-ge v1, v0, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    check-cast v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 151
    .line 152
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-ne v7, v3, :cond_4

    .line 157
    .line 158
    const-string v7, "android.media.intent.category.LIVE_AUDIO"

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_4

    .line 165
    .line 166
    const-string v7, "android.media.intent.category.LIVE_VIDEO"

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->n(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_4

    .line 173
    .line 174
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g()Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_4

    .line 179
    .line 180
    iput-object v6, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v1, "Found bluetooth route: "

    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->w:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 202
    .line 203
    if-eqz v0, :cond_8

    .line 204
    .line 205
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->g:Z

    .line 206
    .line 207
    if-nez v0, :cond_6

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_6
    if-eqz p1, :cond_7

    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->j()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->o()V

    .line 216
    .line 217
    .line 218
    :cond_7
    return-void

    .line 219
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, "Unselecting the current route because it is no longer selectable: "

    .line 222
    .line 223
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/mediarouter/media/GlobalMediaRouter;->c()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, p1, v5, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;IZ)V

    .line 244
    .line 245
    .line 246
    return-void
.end method
