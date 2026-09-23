.class final Landroidx/credentials/provider/CustomCredentialEntry$Api35Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CustomCredentialEntry;
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
        "Landroidx/credentials/provider/CustomCredentialEntry$Api35Impl;",
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
        "SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,907:1\n1855#2,2:908\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api35Impl\n*L\n370#1:908,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;
    .locals 20

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
    invoke-static {v1}, Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;->a(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CustomCredentialEntry;

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
    iget-object v5, v0, Landroidx/credentials/provider/CustomCredentialEntry;->e:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/credentials/provider/CustomCredentialEntry;->f:Ljava/lang/CharSequence;

    .line 58
    .line 59
    iget-object v7, v0, Landroidx/credentials/provider/CustomCredentialEntry;->g:Landroid/app/PendingIntent;

    .line 60
    .line 61
    iget-boolean v8, v0, Landroidx/credentials/provider/CustomCredentialEntry;->h:Z

    .line 62
    .line 63
    iget-object v9, v0, Landroidx/credentials/provider/CustomCredentialEntry;->i:Ljava/lang/CharSequence;

    .line 64
    .line 65
    iget-object v10, v0, Landroidx/credentials/provider/CustomCredentialEntry;->j:Ljava/lang/CharSequence;

    .line 66
    .line 67
    iget-object v11, v0, Landroidx/credentials/provider/CustomCredentialEntry;->k:Landroid/graphics/drawable/Icon;

    .line 68
    .line 69
    iget-object v12, v0, Landroidx/credentials/provider/CustomCredentialEntry;->l:Lj$/time/Instant;

    .line 70
    .line 71
    iget-object v13, v0, Landroidx/credentials/provider/CredentialEntry;->a:Landroidx/credentials/provider/BeginGetCredentialOption;

    .line 72
    .line 73
    iget-boolean v14, v0, Landroidx/credentials/provider/CredentialEntry;->c:Z

    .line 74
    .line 75
    iget-object v15, v0, Landroidx/credentials/provider/CredentialEntry;->b:Ljava/lang/CharSequence;

    .line 76
    .line 77
    iget-object v1, v0, Landroidx/credentials/provider/CredentialEntry;->d:Ljava/lang/CharSequence;

    .line 78
    .line 79
    iget-boolean v4, v0, Landroidx/credentials/provider/CustomCredentialEntry;->n:Z

    .line 80
    .line 81
    iget-boolean v0, v0, Landroidx/credentials/provider/CustomCredentialEntry;->m:Z

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    sget v16, Landroidx/credentials/provider/BiometricPromptData;->a:I

    .line 86
    .line 87
    invoke-static {v3}, Landroidx/credentials/provider/BiometricPromptData$Companion;->a(Landroid/os/Bundle;)Landroidx/credentials/provider/BiometricPromptData;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    move-object/from16 v17, v3

    .line 92
    .line 93
    :goto_1
    move/from16 v18, v4

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    move-object/from16 v17, v2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    new-instance v4, Landroidx/credentials/provider/CustomCredentialEntry;

    .line 102
    .line 103
    move/from16 v19, v0

    .line 104
    .line 105
    move-object/from16 v16, v1

    .line 106
    .line 107
    invoke-direct/range {v4 .. v19}, Landroidx/credentials/provider/CustomCredentialEntry;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lj$/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    return-object v4

    .line 111
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v3, "fromSlice failed with: "

    .line 114
    .line 115
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "CredentialEntry"

    .line 130
    .line 131
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-object v2
.end method
