.class Lcom/mycompany/app/dialog/DialogEditArea$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$9$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$9$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea$9;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditArea$9;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 19
    .line 20
    return-void
.end method
