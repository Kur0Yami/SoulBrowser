.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 14

    .line 1
    const-class v0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/firebase/components/Dependency;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const-class v4, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/google/mlkit/common/internal/zza;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v1, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v6, Lcom/google/mlkit/common/internal/zzb;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v6, v5, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-class v6, Lcom/google/mlkit/common/model/RemoteModelManager;

    .line 48
    .line 49
    invoke-static {v6}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance v7, Lcom/google/firebase/components/Dependency;

    .line 54
    .line 55
    const/4 v8, 0x2

    .line 56
    const-class v9, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    .line 57
    .line 58
    invoke-direct {v7, v8, v3, v9}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 62
    .line 63
    .line 64
    new-instance v7, Lcom/google/mlkit/common/internal/zzc;

    .line 65
    .line 66
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v7, v6, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-class v7, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    .line 76
    .line 77
    invoke-static {v7}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    new-instance v10, Lcom/google/firebase/components/Dependency;

    .line 82
    .line 83
    invoke-direct {v10, v2, v2, v1}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v10}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/google/mlkit/common/internal/zzd;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v1, v7, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 95
    .line 96
    invoke-virtual {v7}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-class v7, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    .line 101
    .line 102
    invoke-static {v7}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    new-instance v11, Lcom/google/mlkit/common/internal/zze;

    .line 107
    .line 108
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v11, v10, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 112
    .line 113
    invoke-virtual {v10}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    const-class v11, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;

    .line 118
    .line 119
    invoke-static {v11}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    new-instance v12, Lcom/google/firebase/components/Dependency;

    .line 124
    .line 125
    invoke-direct {v12, v2, v3, v7}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v12}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 129
    .line 130
    .line 131
    new-instance v7, Lcom/google/mlkit/common/internal/zzf;

    .line 132
    .line 133
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v7, v11, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 137
    .line 138
    invoke-virtual {v11}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    const-class v11, Lcom/google/mlkit/common/internal/model/zzg;

    .line 143
    .line 144
    invoke-static {v11}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    new-instance v13, Lcom/google/firebase/components/Dependency;

    .line 149
    .line 150
    invoke-direct {v13, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v12, v13}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 154
    .line 155
    .line 156
    new-instance v4, Lcom/google/mlkit/common/internal/zzg;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v4, v12, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 162
    .line 163
    invoke-virtual {v12}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v9}, Lcom/google/firebase/components/Component;->a(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    iput v2, v9, Lcom/google/firebase/components/Component$Builder;->c:I

    .line 172
    .line 173
    new-instance v12, Lcom/google/firebase/components/Dependency;

    .line 174
    .line 175
    invoke-direct {v12, v2, v2, v11}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v12}, Lcom/google/firebase/components/Component$Builder;->a(Lcom/google/firebase/components/Dependency;)V

    .line 179
    .line 180
    .line 181
    new-instance v11, Lcom/google/mlkit/common/internal/zzh;

    .line 182
    .line 183
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v11, v9, Lcom/google/firebase/components/Component$Builder;->d:Lcom/google/firebase/components/ComponentFactory;

    .line 187
    .line 188
    invoke-virtual {v9}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    sget-object v11, Lcom/google/android/gms/internal/mlkit_common/zzaf;->f:Lcom/google/android/gms/internal/mlkit_common/zzat;

    .line 193
    .line 194
    const/16 v11, 0x9

    .line 195
    .line 196
    new-array v12, v11, [Ljava/lang/Object;

    .line 197
    .line 198
    sget-object v13, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->b:Lcom/google/firebase/components/Component;

    .line 199
    .line 200
    aput-object v13, v12, v3

    .line 201
    .line 202
    aput-object v0, v12, v2

    .line 203
    .line 204
    aput-object v5, v12, v8

    .line 205
    .line 206
    const/4 v0, 0x3

    .line 207
    aput-object v6, v12, v0

    .line 208
    .line 209
    const/4 v0, 0x4

    .line 210
    aput-object v1, v12, v0

    .line 211
    .line 212
    const/4 v0, 0x5

    .line 213
    aput-object v10, v12, v0

    .line 214
    .line 215
    const/4 v0, 0x6

    .line 216
    aput-object v7, v12, v0

    .line 217
    .line 218
    const/4 v0, 0x7

    .line 219
    aput-object v4, v12, v0

    .line 220
    .line 221
    const/16 v0, 0x8

    .line 222
    .line 223
    aput-object v9, v12, v0

    .line 224
    .line 225
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/mlkit_common/zzak;->a(I[Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzaf;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0
.end method
