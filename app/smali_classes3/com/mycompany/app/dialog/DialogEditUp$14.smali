.class Lcom/mycompany/app/dialog/DialogEditUp$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$14;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp$14;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->dev_cat:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->B0:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-float v1, v1

    .line 26
    div-float/2addr v2, v1

    .line 27
    iput v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->C0:F

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 43
    .line 44
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditUp$14$1;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditUp$14$1;-><init>(Lcom/mycompany/app/dialog/DialogEditUp$14;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
