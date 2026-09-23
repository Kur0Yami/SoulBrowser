.class Lcom/mycompany/app/dialog/DialogSetHead$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetHead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead$5;->c:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead$5;->c:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->j0:I

    .line 6
    .line 7
    if-eq p1, v1, :cond_2

    .line 8
    .line 9
    if-ltz v1, :cond_2

    .line 10
    .line 11
    sget-object p1, Lcom/mycompany/app/main/MainConst;->u:[I

    .line 12
    .line 13
    array-length p1, p1

    .line 14
    if-lt v1, p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sput v1, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 18
    .line 19
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m7()V

    .line 20
    .line 21
    .line 22
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "mHeadIndex"

    .line 25
    .line 26
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->P:I

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    invoke-static {p1, v3, v2, v1}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;->a()V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetHead;->dismiss()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetHead;->dismiss()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
