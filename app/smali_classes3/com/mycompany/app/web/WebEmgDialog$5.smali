.class Lcom/mycompany/app/web/WebEmgDialog$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$5;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$5;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 14
    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/mycompany/app/view/MyProgressBar;->A:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    iput-boolean v3, p1, Lcom/mycompany/app/web/WebEmgDialog;->x0:Z

    .line 23
    .line 24
    iget v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq v0, v1, :cond_7

    .line 28
    .line 29
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->z0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 49
    .line 50
    :goto_0
    if-nez v0, :cond_5

    .line 51
    .line 52
    :cond_3
    iget-object v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->A0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 57
    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    move v0, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 63
    .line 64
    :goto_1
    if-eqz v0, :cond_6

    .line 65
    .line 66
    :cond_5
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->w(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    iput v3, p1, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 71
    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .line 74
    iput-wide v0, p1, Lcom/mycompany/app/web/WebEmgDialog;->u0:J

    .line 75
    .line 76
    iput-boolean v3, p1, Lcom/mycompany/app/web/WebEmgDialog;->v0:Z

    .line 77
    .line 78
    const/4 v0, -0x1

    .line 79
    invoke-static {p1, v0}, Lcom/mycompany/app/web/WebEmgDialog;->s(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->w(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_7
    :goto_2
    invoke-static {p1}, Lcom/mycompany/app/web/WebEmgDialog;->w(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 87
    .line 88
    .line 89
    :cond_8
    :goto_3
    return-void
.end method
