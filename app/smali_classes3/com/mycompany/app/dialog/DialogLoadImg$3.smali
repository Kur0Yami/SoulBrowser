.class Lcom/mycompany/app/dialog/DialogLoadImg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLoadImg;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLoadImg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$3;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogLoadImg$3;->c:Lcom/mycompany/app/dialog/DialogLoadImg;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogLoadImg;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogLoadImg;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogLoadImg;->z0:Z

    .line 20
    .line 21
    iput v0, p1, Lcom/mycompany/app/dialog/DialogLoadImg;->l0:I

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, p1, Lcom/mycompany/app/dialog/DialogLoadImg;->w0:J

    .line 26
    .line 27
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogLoadImg;->x0:Z

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    invoke-virtual {p1, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->C(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/mycompany/app/web/WebLoadTask;->c()Lcom/mycompany/app/web/WebLoadTask;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/dialog/DialogLoadImg;->D(IZ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
