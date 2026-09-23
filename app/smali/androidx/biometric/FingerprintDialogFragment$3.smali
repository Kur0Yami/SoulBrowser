.class Landroidx/biometric/FingerprintDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method public constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$3;->a:Landroidx/biometric/FingerprintDialogFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$3;->a:Landroidx/biometric/FingerprintDialogFragment;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/biometric/FingerprintDialogFragment;->c:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/biometric/FingerprintDialogFragment;->f:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v3, v0, Landroidx/biometric/FingerprintDialogFragment;->j:Landroid/widget/ImageView;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_0
    iget-object v3, v0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 23
    .line 24
    iget v3, v3, Landroidx/biometric/BiometricViewModel;->y:I

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    const-string v5, "FingerprintFragment"

    .line 35
    .line 36
    const-string v8, "Unable to get asset. Context is null."

    .line 37
    .line 38
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v3, :cond_2

    .line 43
    .line 44
    if-ne v1, v6, :cond_2

    .line 45
    .line 46
    sget v7, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_icon:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-ne v3, v6, :cond_3

    .line 50
    .line 51
    if-ne v1, v4, :cond_3

    .line 52
    .line 53
    sget v7, Landroidx/biometric/R$drawable;->fingerprint_dialog_error:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    if-ne v3, v4, :cond_4

    .line 57
    .line 58
    if-ne v1, v6, :cond_4

    .line 59
    .line 60
    sget v7, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_icon:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    if-ne v3, v6, :cond_5

    .line 64
    .line 65
    const/4 v8, 0x3

    .line 66
    if-ne v1, v8, :cond_5

    .line 67
    .line 68
    sget v7, Landroidx/biometric/R$drawable;->fingerprint_dialog_fp_icon:I

    .line 69
    .line 70
    :goto_0
    invoke-virtual {v5, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    :cond_5
    :goto_1
    if-nez v7, :cond_6

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    iget-object v5, v0, Landroidx/biometric/FingerprintDialogFragment;->j:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    if-nez v3, :cond_7

    .line 83
    .line 84
    if-ne v1, v6, :cond_7

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    if-ne v3, v6, :cond_8

    .line 88
    .line 89
    if-ne v1, v4, :cond_8

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_8
    if-ne v3, v4, :cond_9

    .line 93
    .line 94
    if-ne v1, v6, :cond_9

    .line 95
    .line 96
    :goto_2
    invoke-static {v7}, Landroidx/biometric/FingerprintDialogFragment$Api21Impl;->a(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    :cond_9
    :goto_3
    iget-object v3, v0, Landroidx/biometric/FingerprintDialogFragment;->g:Landroidx/biometric/BiometricViewModel;

    .line 100
    .line 101
    iput v1, v3, Landroidx/biometric/BiometricViewModel;->y:I

    .line 102
    .line 103
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    iget-object v1, v0, Landroidx/biometric/FingerprintDialogFragment;->k:Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v1, :cond_b

    .line 110
    .line 111
    if-ne p1, v4, :cond_a

    .line 112
    .line 113
    iget p1, v0, Landroidx/biometric/FingerprintDialogFragment;->h:I

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_a
    iget p1, v0, Landroidx/biometric/FingerprintDialogFragment;->i:I

    .line 117
    .line 118
    :goto_5
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    :cond_b
    iget-object p1, v0, Landroidx/biometric/FingerprintDialogFragment;->c:Landroid/os/Handler;

    .line 122
    .line 123
    const-wide/16 v0, 0x7d0

    .line 124
    .line 125
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .line 127
    .line 128
    return-void
.end method
