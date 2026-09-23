.class Lcom/mycompany/app/view/MyThumbView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Lcom/mycompany/app/view/MyThumbView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyThumbView;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView$2;->i:Lcom/mycompany/app/view/MyThumbView;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/view/MyThumbView$2;->c:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mycompany/app/view/MyThumbView$2;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/view/MyThumbView$2;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput p6, p0, Lcom/mycompany/app/view/MyThumbView$2;->h:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView$2;->i:Lcom/mycompany/app/view/MyThumbView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/view/MyThumbView;->B:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    iget-wide v3, p0, Lcom/mycompany/app/view/MyThumbView$2;->c:J

    .line 13
    .line 14
    cmp-long v1, v3, v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView$2;->f:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookIcon;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/mycompany/app/view/MyThumbView$2;->g:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_7

    .line 50
    .line 51
    const-string v3, "file:///"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    const-string v3, "/data/"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    :cond_3
    const-string v3, "file:///android_asset/shortcut.html"

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_web_24:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_dark_web_24:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_web_24:I

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_dark_web_24:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_7
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 96
    .line 97
    if-eqz v2, :cond_8

    .line 98
    .line 99
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_web_24:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_8
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_web_24:I

    .line 103
    .line 104
    :goto_0
    invoke-static {v1, v2}, Lcom/mycompany/app/main/BitmapUtil;->d(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_9

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_9
    :goto_1
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 116
    .line 117
    if-nez v2, :cond_a

    .line 118
    .line 119
    :goto_2
    return-void

    .line 120
    :cond_a
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView$2;->h:I

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyThumbView;->n(Landroid/graphics/Bitmap;I)V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$2$1;

    .line 126
    .line 127
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$2$1;-><init>(Lcom/mycompany/app/view/MyThumbView$2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method
