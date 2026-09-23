.class public final Landroidx/credentials/provider/CustomCredentialEntry;
.super Landroidx/credentials/provider/CredentialEntry;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;,
        Landroidx/credentials/provider/CustomCredentialEntry$Api34Impl;,
        Landroidx/credentials/provider/CustomCredentialEntry$Api35Impl;,
        Landroidx/credentials/provider/CustomCredentialEntry$Builder;,
        Landroidx/credentials/provider/CustomCredentialEntry$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/credentials/provider/CustomCredentialEntry;",
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
        "SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,907:1\n1#2:908\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Landroid/app/PendingIntent;

.field public final h:Z

.field public final i:Ljava/lang/CharSequence;

.field public final j:Ljava/lang/CharSequence;

.field public final k:Landroid/graphics/drawable/Icon;

.field public final l:Lj$/time/Instant;

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lj$/time/Instant;Landroidx/credentials/provider/BeginGetCredentialOption;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;ZZ)V
    .locals 8

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "title"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pendingIntent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "icon"

    .line 17
    .line 18
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "beginGetCredentialOption"

    .line 22
    .line 23
    move-object/from16 v3, p9

    .line 24
    .line 25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-nez p11, :cond_0

    .line 29
    .line 30
    move-object v4, p2

    .line 31
    :goto_0
    move-object v1, p0

    .line 32
    move-object v2, p1

    .line 33
    move/from16 v5, p10

    .line 34
    .line 35
    move-object/from16 v6, p12

    .line 36
    .line 37
    move-object/from16 v7, p13

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move-object/from16 v4, p11

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-direct/range {v1 .. v7}, Landroidx/credentials/provider/CredentialEntry;-><init>(Ljava/lang/String;Landroidx/credentials/provider/BeginGetCredentialOption;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroidx/credentials/provider/BiometricPromptData;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/credentials/provider/CustomCredentialEntry;->e:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p2, p0, Landroidx/credentials/provider/CustomCredentialEntry;->f:Ljava/lang/CharSequence;

    .line 49
    .line 50
    iput-object p3, p0, Landroidx/credentials/provider/CustomCredentialEntry;->g:Landroid/app/PendingIntent;

    .line 51
    .line 52
    iput-boolean p4, p0, Landroidx/credentials/provider/CustomCredentialEntry;->h:Z

    .line 53
    .line 54
    iput-object p5, p0, Landroidx/credentials/provider/CustomCredentialEntry;->i:Ljava/lang/CharSequence;

    .line 55
    .line 56
    iput-object p6, p0, Landroidx/credentials/provider/CustomCredentialEntry;->j:Ljava/lang/CharSequence;

    .line 57
    .line 58
    iput-object p7, p0, Landroidx/credentials/provider/CustomCredentialEntry;->k:Landroid/graphics/drawable/Icon;

    .line 59
    .line 60
    move-object/from16 p3, p8

    .line 61
    .line 62
    iput-object p3, p0, Landroidx/credentials/provider/CustomCredentialEntry;->l:Lj$/time/Instant;

    .line 63
    .line 64
    move/from16 p3, p15

    .line 65
    .line 66
    iput-boolean p3, p0, Landroidx/credentials/provider/CustomCredentialEntry;->m:Z

    .line 67
    .line 68
    move/from16 p3, p14

    .line 69
    .line 70
    iput-boolean p3, p0, Landroidx/credentials/provider/CustomCredentialEntry;->n:Z

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_2

    .line 77
    .line 78
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_1

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p2, "title must not be empty"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p2, "type must not be empty"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
