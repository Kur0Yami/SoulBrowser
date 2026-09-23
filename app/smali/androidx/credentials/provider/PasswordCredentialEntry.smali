.class public final Landroidx/credentials/provider/PasswordCredentialEntry;
.super Landroidx/credentials/provider/CredentialEntry;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/PasswordCredentialEntry$Api28Impl;,
        Landroidx/credentials/provider/PasswordCredentialEntry$Api34Impl;,
        Landroidx/credentials/provider/PasswordCredentialEntry$Api35Impl;,
        Landroidx/credentials/provider/PasswordCredentialEntry$Builder;,
        Landroidx/credentials/provider/PasswordCredentialEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/credentials/provider/PasswordCredentialEntry;",
        "Landroidx/credentials/provider/CredentialEntry;",
        "Api28Impl",
        "Api34Impl",
        "Api35Impl",
        "Builder",
        "Companion",
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
        "SMAP\nPasswordCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredentialEntry.kt\nandroidx/credentials/provider/PasswordCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,899:1\n1#2:900\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Landroid/app/PendingIntent;

.field public final i:Lj$/time/Instant;

.field public final j:Landroid/graphics/drawable/Icon;

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Lj$/time/Instant;Landroid/graphics/drawable/Icon;ZLandroidx/credentials/provider/BeginGetPasswordOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZ)V
    .locals 8

    .line 1
    const-string v0, "username"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "typeDisplayName"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pendingIntent"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "icon"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "beginGetPasswordOption"

    .line 22
    .line 23
    move-object/from16 v3, p8

    .line 24
    .line 25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p10, :cond_0

    .line 29
    .line 30
    move-object v4, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object/from16 v4, p10

    .line 33
    .line 34
    :goto_0
    const-string v2, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    .line 35
    .line 36
    move-object v1, p0

    .line 37
    move/from16 v5, p9

    .line 38
    .line 39
    move-object/from16 v6, p11

    .line 40
    .line 41
    move-object/from16 v7, p12

    .line 42
    .line 43
    invoke-direct/range {v1 .. v7}, Landroidx/credentials/provider/CredentialEntry;-><init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->e:Ljava/lang/CharSequence;

    .line 47
    .line 48
    iput-object p2, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->f:Ljava/lang/CharSequence;

    .line 49
    .line 50
    iput-object p3, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->g:Ljava/lang/CharSequence;

    .line 51
    .line 52
    iput-object p4, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->h:Landroid/app/PendingIntent;

    .line 53
    .line 54
    iput-object p5, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->i:Lj$/time/Instant;

    .line 55
    .line 56
    iput-object p6, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->j:Landroid/graphics/drawable/Icon;

    .line 57
    .line 58
    iput-boolean p7, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->k:Z

    .line 59
    .line 60
    move/from16 p2, p14

    .line 61
    .line 62
    iput-boolean p2, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->l:Z

    .line 63
    .line 64
    move/from16 p2, p13

    .line 65
    .line 66
    iput-boolean p2, p0, Landroidx/credentials/provider/PasswordCredentialEntry;->m:Z

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-lez p1, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "username must not be empty"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method
