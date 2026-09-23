.class Lcom/mycompany/app/main/image/MainImageQuick$31$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$31;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$31$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$31;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$31$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$31;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$31;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->e2:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v0, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 17
    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->w0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/main/image/MainImageView;->m()V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/image/MainImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->X1:Z

    .line 61
    .line 62
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 63
    .line 64
    if-eq v1, v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageQuick;->C0()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/image/MainImageQuick;->E0(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->z1:Lcom/mycompany/app/main/image/MainImageView;

    .line 74
    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/image/MainImageQuick;->H0(Z)V

    .line 78
    .line 79
    .line 80
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->J1:Z

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->x0(Z)Lcom/mycompany/app/main/image/MainImageView;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 93
    .line 94
    if-nez v1, :cond_8

    .line 95
    .line 96
    :goto_1
    return-void

    .line 97
    :cond_8
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$17;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/image/MainImageQuick$17;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method
