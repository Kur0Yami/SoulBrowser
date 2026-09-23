.class final Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PasswordCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api35Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;",
        "",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,899:1\n1855#2,2:900\n*S KotlinDebug\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry$Api35Impl\n*L\n383#1:900,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;
    .locals 19

    .line 1
    const-string v0, "slice"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;->a(Landroid/app/slice/Slice;)Landroidx/credentials/provider/PasswordCredentialEntry;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v3, "slice.items"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v3, v2

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/app/slice/SliceItem;

    .line 41
    .line 42
    const-string v5, "androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/app/slice/SliceItem;->getBundle()Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :try_start_0
    iget-object v5, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->e:Ljava/lang/CharSequence;

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->f:Ljava/lang/CharSequence;

    .line 58
    .line 59
    iget-object v7, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->g:Ljava/lang/CharSequence;

    .line 60
    .line 61
    iget-object v8, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->h:Landroid/app/PendingIntent;

    .line 62
    .line 63
    iget-object v9, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->i:Lj$/time/Instant;

    .line 64
    .line 65
    iget-object v10, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->j:Landroid/graphics/drawable/Icon;

    .line 66
    .line 67
    iget-boolean v11, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->k:Z

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/credentials/provider/CredentialEntry;->a:Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 70
    .line 71
    const-string v4, "null cannot be cast to non-null type androidx.credentials.provider.BeginGetPasswordOption"

    .line 72
    .line 73
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v12, v1

    .line 77
    check-cast v12, Landroidx/credentials/provider/BeginGetPasswordOption;

    .line 78
    .line 79
    iget-object v14, v0, Landroidx/credentials/provider/CredentialEntry;->b:Ljava/lang/CharSequence;

    .line 80
    .line 81
    iget-boolean v13, v0, Landroidx/credentials/provider/CredentialEntry;->c:Z

    .line 82
    .line 83
    iget-object v15, v0, Landroidx/credentials/provider/CredentialEntry;->d:Ljava/lang/CharSequence;

    .line 84
    .line 85
    iget-boolean v1, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->m:Z

    .line 86
    .line 87
    iget-boolean v0, v0, Landroidx/credentials/provider/PasswordCredentialEntry;->l:Z

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    sget v4, Landroidx/credentials/provider/BiometricPromptData;->a:I

    .line 92
    .line 93
    invoke-static {v3}, Landroidx/credentials/provider/BiometricPromptData$Companion;->a(Landroid/os/Bundle;)Landroidx/credentials/provider/BiometricPromptData;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object/from16 v16, v3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move-object/from16 v16, v2

    .line 103
    .line 104
    :goto_1
    new-instance v4, Landroidx/credentials/provider/PasswordCredentialEntry;

    .line 105
    .line 106
    move/from16 v18, v0

    .line 107
    .line 108
    move/from16 v17, v1

    .line 109
    .line 110
    invoke-direct/range {v4 .. v18}, Landroidx/credentials/provider/PasswordCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Lj$/time/Instant;Landroid/graphics/drawable/Icon;ZLandroidx/credentials/provider/BeginGetPasswordOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v3, "fromSlice failed with: "

    .line 117
    .line 118
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "PasswordCredentialEntry"

    .line 133
    .line 134
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return-object v2
.end method
