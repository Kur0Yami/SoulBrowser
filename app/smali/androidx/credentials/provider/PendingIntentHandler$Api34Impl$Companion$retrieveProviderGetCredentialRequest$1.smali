.class final Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion$retrieveProviderGetCredentialRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/credentials/CredentialOption;",
        "Landroidx/credentials/CredentialOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/credentials/CredentialOption;",
        "kotlin.jvm.PlatformType",
        "option",
        "Landroid/credentials/CredentialOption;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion$retrieveProviderGetCredentialRequest$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroid/credentials/CredentialOption;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "option.type"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v0, "option.credentialRetrievalData"

    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v0, "option.candidateQueryData"

    .line 26
    .line 27
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->isSystemProviderRequired()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string p1, "option.allowedProviders"

    .line 38
    .line 39
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "type"

    .line 43
    .line 44
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "requestData"

    .line 48
    .line 49
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v4, "candidateQueryData"

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "allowedProviders"

    .line 58
    .line 59
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const v8, -0x640a7654

    .line 67
    .line 68
    .line 69
    if-eq v7, v8, :cond_2

    .line 70
    .line 71
    const v8, -0x20663139

    .line 72
    .line 73
    .line 74
    if-eq v7, v8, :cond_1

    .line 75
    .line 76
    const v8, -0x5aa2881

    .line 77
    .line 78
    .line 79
    if-ne v7, v8, :cond_3

    .line 80
    .line 81
    const-string v7, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    .line 82
    .line 83
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    const-string v7, "androidx.credentials.BUNDLE_KEY_SUBTYPE"

    .line 90
    .line 91
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    if-eqz v7, :cond_0

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    const v9, -0x248a88f7

    .line 102
    .line 103
    .line 104
    if-ne v8, v9, :cond_0

    .line 105
    .line 106
    const-string v8, "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION"

    .line 107
    .line 108
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_0

    .line 113
    .line 114
    invoke-static {v2, v3, v5}, Landroidx/credentials/GetPublicKeyCredentialOption$Companion;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)Landroidx/credentials/GetPublicKeyCredentialOption;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :catch_0
    move-object v7, v0

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    new-instance v7, Landroidx/credentials/internal/FrameworkClassParsingException;

    .line 122
    .line 123
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 124
    .line 125
    .line 126
    throw v7

    .line 127
    :cond_1
    const-string v7, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    .line 128
    .line 129
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    invoke-static {v2, v3, v5}, Landroidx/credentials/GetPasswordOption$Companion;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)Landroidx/credentials/GetPasswordOption;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :cond_2
    const-string v7, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    .line 141
    .line 142
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_3

    .line 147
    .line 148
    invoke-static {v2, v3, v5}, Landroidx/credentials/GetDigitalCredentialOption$Companion;->a(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/Set;)Landroidx/credentials/GetDigitalCredentialOption;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    return-object p1

    .line 153
    :cond_3
    new-instance v7, Landroidx/credentials/internal/FrameworkClassParsingException;

    .line 154
    .line 155
    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    .line 156
    .line 157
    .line 158
    throw v7
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    new-instance v0, Landroidx/credentials/GetCustomCredentialOption;

    .line 160
    .line 161
    const-string v8, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    .line 162
    .line 163
    const/4 v9, 0x0

    .line 164
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    const-string v9, "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE"

    .line 169
    .line 170
    const/16 v10, 0x7d0

    .line 171
    .line 172
    invoke-virtual {v2, v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move v4, v8

    .line 189
    move v6, v9

    .line 190
    invoke-direct/range {v0 .. v6}, Landroidx/credentials/CredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/util/Set;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-lez p1, :cond_5

    .line 198
    .line 199
    const/16 p1, 0x64

    .line 200
    .line 201
    if-eq v6, p1, :cond_4

    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string v0, "Custom types should not have passkey level priority."

    .line 207
    .line 208
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    const-string v0, "type should not be empty"

    .line 215
    .line 216
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1
.end method
