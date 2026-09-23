.class Lcom/mycompany/app/dialog/DialogUrlLink$29;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$29;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$29;->a:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->B0:Lcom/mycompany/app/view/MyLineText;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogUrlLink;->L(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogUrlLink;->K()V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 24
    .line 25
    if-ne p1, v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget p1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->r0:I

    .line 29
    .line 30
    iget v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->s0:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    :goto_1
    return-void

    .line 40
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$30;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$30;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
