.class Lcom/mycompany/app/dialog/DialogCapture$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$16;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$16;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->M:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogCapture;->p()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
