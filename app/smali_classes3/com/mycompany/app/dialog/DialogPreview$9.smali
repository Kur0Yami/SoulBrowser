.class Lcom/mycompany/app/dialog/DialogPreview$9;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$9;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$9;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreview;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 23
    .line 24
    iget p1, p1, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    if-ne p1, v3, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 v1, 0x0

    .line 31
    :goto_1
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;->b(Ljava/lang/String;JZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
