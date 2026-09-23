.class Lcom/mycompany/app/dialog/DialogPreImage$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$7;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$7;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->k0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
