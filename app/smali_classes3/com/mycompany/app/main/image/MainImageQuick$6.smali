.class Lcom/mycompany/app/main/image/MainImageQuick$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$6;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$6;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->I1:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-boolean v0, v0, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iput-boolean v1, p1, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 43
    .line 44
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$31;

    .line 55
    .line 56
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageQuick$31;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->P1:Lcom/mycompany/app/dialog/DialogEditText;

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    invoke-virtual {p1}, Lcom/mycompany/app/main/image/MainImageQuick;->z0()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 77
    .line 78
    if-nez v0, :cond_8

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_8
    iget-boolean v0, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 82
    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 86
    .line 87
    iget-boolean v0, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_9
    iput-boolean v1, p1, Lcom/mycompany/app/main/image/MainImageQuick;->V1:Z

    .line 98
    .line 99
    sput-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 100
    .line 101
    new-instance v0, Lcom/mycompany/app/view/MyDialogBottom;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p1, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 107
    .line 108
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$26;

    .line 109
    .line 110
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageQuick$26;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 117
    .line 118
    if-nez v0, :cond_a

    .line 119
    .line 120
    :goto_0
    return-void

    .line 121
    :cond_a
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$27;

    .line 122
    .line 123
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageQuick$27;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method
