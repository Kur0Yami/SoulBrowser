.class Lcom/mycompany/app/dialog/DialogPreview$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$7;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$7;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
