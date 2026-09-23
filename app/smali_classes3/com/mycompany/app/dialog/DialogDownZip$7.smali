.class Lcom/mycompany/app/dialog/DialogDownZip$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$7;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$7;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->b1:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownZip$17;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v1, p1, v2}, Lcom/mycompany/app/dialog/DialogDownZip$17;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->h1:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownZip;->D()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownZip;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownZip$20;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogDownZip$20;-><init>(Lcom/mycompany/app/dialog/DialogDownZip;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    return-void
.end method
