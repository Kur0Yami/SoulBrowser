.class Lcom/mycompany/app/dialog/DialogSetTabPos$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$7;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$7;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->x0:I

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    sput v1, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 10
    .line 11
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 12
    .line 13
    const/16 v2, 0xe

    .line 14
    .line 15
    const-string v3, "mTabBar2"

    .line 16
    .line 17
    invoke-static {p1, v2, v1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabPos;->dismiss()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
