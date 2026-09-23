.class Lcom/mycompany/app/view/MyRoundImage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I

.field public final synthetic k:Lcom/mycompany/app/view/MyRoundImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyRoundImage;JJLjava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyRoundImage$3;->k:Lcom/mycompany/app/view/MyRoundImage;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/view/MyRoundImage$3;->c:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/mycompany/app/view/MyRoundImage$3;->f:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/mycompany/app/view/MyRoundImage$3;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput p7, p0, Lcom/mycompany/app/view/MyRoundImage$3;->h:I

    .line 13
    .line 14
    iput-object p8, p0, Lcom/mycompany/app/view/MyRoundImage$3;->i:Ljava/lang/String;

    .line 15
    .line 16
    iput p9, p0, Lcom/mycompany/app/view/MyRoundImage$3;->j:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyRoundImage$3;->k:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/view/MyRoundImage;->z:I

    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    iget-wide v3, p0, Lcom/mycompany/app/view/MyRoundImage$3;->c:J

    .line 12
    .line 13
    cmp-long v1, v3, v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/view/MyRoundImage;->f:Landroid/content/Context;

    .line 19
    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/mycompany/app/view/MyRoundImage$3;->f:J

    .line 23
    .line 24
    iget-object v5, p0, Lcom/mycompany/app/view/MyRoundImage$3;->g:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3, v4, v1, v5}, Lcom/mycompany/app/main/MainUtil;->g0(IJLandroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p0, Lcom/mycompany/app/view/MyRoundImage$3;->h:I

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyRoundImage;->B:Z

    .line 44
    .line 45
    invoke-static {v5, v1, v2}, Lcom/mycompany/app/main/MainListLoader;->g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyRoundImage;->c:Z

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyRoundImage;->A(Landroid/graphics/Bitmap;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/view/MyRoundImage$3$1;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyRoundImage$3$1;-><init>(Lcom/mycompany/app/view/MyRoundImage$3;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/view/MyRoundImage$3;->i:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    iget v2, p0, Lcom/mycompany/app/view/MyRoundImage$3;->j:I

    .line 74
    .line 75
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/view/MyRoundImage;->h(IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/mycompany/app/view/MyRoundImage$3$2;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyRoundImage$3$2;-><init>(Lcom/mycompany/app/view/MyRoundImage$3;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_0
    return-void
.end method
