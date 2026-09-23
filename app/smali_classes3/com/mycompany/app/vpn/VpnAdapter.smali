.class public Lcom/mycompany/app/vpn/VpnAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;
    }
.end annotation


# instance fields
.field public final a:Lcom/mycompany/app/vpn/VpnSvc;

.field public b:Lcom/mycompany/app/vpn/VpnListener;

.field public c:Landroid/os/ParcelFileDescriptor;

.field public d:Lbackend/Session;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/vpn/VpnSvc;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/vpn/VpnAdapter;->a:Lcom/mycompany/app/vpn/VpnSvc;

    .line 5
    .line 6
    new-instance v0, Lcom/mycompany/app/vpn/VpnListener;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->b:Lcom/mycompany/app/vpn/VpnListener;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/VpnService$Builder;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "Soul DNS"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x5dc

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "10.111.222.1"

    .line 35
    .line 36
    const/16 v3, 0x18

    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "0.0.0.0"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "10.111.222.3"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/net/VpnService$Builder;->allowBypass()Landroid/net/VpnService$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v2, 0x1d

    .line 70
    .line 71
    if-lt v1, v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/net/VpnService$Builder;->setMetered(Z)Landroid/net/VpnService$Builder;

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->c:Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_8

    .line 14
    .line 15
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_8

    .line 22
    .line 23
    new-instance p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->a:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v0, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_0
    const-string v1, ","

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    array-length v4, v0

    .line 51
    const/4 v5, 0x4

    .line 52
    if-eq v4, v5, :cond_1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_1
    move-object v4, v3

    .line 56
    :goto_0
    if-ge v2, v5, :cond_5

    .line 57
    .line 58
    aget-object v6, v0, v2

    .line 59
    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_4

    .line 65
    .line 66
    const-string v7, "x"

    .line 67
    .line 68
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_2

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    if-nez v4, :cond_3

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    if-nez v4, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :cond_7
    :goto_3
    iput-object v3, p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->b:Ljava/lang/String;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget v0, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 107
    .line 108
    if-ltz v0, :cond_c

    .line 109
    .line 110
    const/16 v1, 0x12

    .line 111
    .line 112
    if-lt v0, v1, :cond_9

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_9
    sget v0, Lnet/kaki87/soul2/testing/R$array;->urls:I

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sget v2, Lnet/kaki87/soul2/testing/R$array;->ips:I

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v0, :cond_b

    .line 128
    .line 129
    if-eqz v2, :cond_b

    .line 130
    .line 131
    array-length v3, v0

    .line 132
    if-ne v3, v1, :cond_b

    .line 133
    .line 134
    array-length v3, v2

    .line 135
    if-eq v3, v1, :cond_a

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_a
    new-instance p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    sget v1, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 144
    .line 145
    aget-object v0, v0, v1

    .line 146
    .line 147
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->a:Ljava/lang/String;

    .line 148
    .line 149
    aget-object v0, v2, v1

    .line 150
    .line 151
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->b:Ljava/lang/String;

    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_b
    :goto_4
    new-instance v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    sget v1, Lnet/kaki87/soul2/testing/R$string;->url0:I

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    iput-object v1, v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->a:Ljava/lang/String;

    .line 166
    .line 167
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ips0:I

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    iput-object p0, v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->b:Ljava/lang/String;

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_c
    :goto_5
    sput v2, Lcom/mycompany/app/pref/PrefTts;->z:I

    .line 177
    .line 178
    new-instance v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    sget v1, Lnet/kaki87/soul2/testing/R$string;->url0:I

    .line 184
    .line 185
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->a:Ljava/lang/String;

    .line 190
    .line 191
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ips0:I

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    iput-object p0, v0, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->b:Ljava/lang/String;

    .line 198
    .line 199
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->d:Lbackend/Session;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lbackend/Session;->disconnect()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/vpn/VpnAdapter;->d:Lbackend/Session;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->c:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/mycompany/app/vpn/VpnAdapter;->c:Landroid/os/ParcelFileDescriptor;

    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/vpn/VpnAdapter;->b:Lcom/mycompany/app/vpn/VpnListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    throw v0
.end method

.method public final b()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->c:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->d:Lbackend/Session;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->a:Lcom/mycompany/app/vpn/VpnSvc;

    .line 12
    .line 13
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/vpn/VpnAdapter;->c(Landroid/content/Context;)Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lbackend/DoHServer;

    .line 18
    .line 19
    iget-object v3, v1, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/mycompany/app/vpn/VpnAdapter$VpnItem;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/mycompany/app/vpn/VpnAdapter;->b:Lcom/mycompany/app/vpn/VpnListener;

    .line 24
    .line 25
    invoke-direct {v2, v3, v1, v0, v4}, Lbackend/DoHServer;-><init>(Ljava/lang/String;Ljava/lang/String;Lprotect/Protector;Lbackend/DoHListener;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :goto_0
    move-object v6, v2

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    const/4 v2, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    if-nez v6, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->c:Landroid/os/ParcelFileDescriptor;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v3, v0

    .line 42
    const-string v5, "10.111.222.3:53"

    .line 43
    .line 44
    iget-object v7, p0, Lcom/mycompany/app/vpn/VpnAdapter;->a:Lcom/mycompany/app/vpn/VpnSvc;

    .line 45
    .line 46
    iget-object v8, p0, Lcom/mycompany/app/vpn/VpnAdapter;->b:Lcom/mycompany/app/vpn/VpnListener;

    .line 47
    .line 48
    invoke-static/range {v3 .. v8}, Lbackend/Backend;->connectSession(JLjava/lang/String;Lbackend/DoHServer;Lprotect/Protector;Lintra/Listener;)Lbackend/Session;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/mycompany/app/vpn/VpnAdapter;->d:Lbackend/Session;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    :goto_2
    const/4 v0, 0x1

    .line 55
    return v0

    .line 56
    :catch_1
    :goto_3
    const/4 v0, 0x0

    .line 57
    return v0
.end method
