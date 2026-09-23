.class Lcom/mycompany/app/dialog/DialogDownLink$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$3;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$3;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownLink;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownLink;->o0:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownSize;->dismiss()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogDownLink;->o0:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 20
    .line 21
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownSize;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownLink;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogDownLink;->d0:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogDownLink;->e0:Ljava/lang/String;

    .line 28
    .line 29
    iget-wide v5, p1, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 30
    .line 31
    new-instance v7, Lcom/mycompany/app/dialog/DialogDownLink$10;

    .line 32
    .line 33
    invoke-direct {v7, p1}, Lcom/mycompany/app/dialog/DialogDownLink$10;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogDownSize;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownLink;->o0:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 40
    .line 41
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownLink$11;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogDownLink$11;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
