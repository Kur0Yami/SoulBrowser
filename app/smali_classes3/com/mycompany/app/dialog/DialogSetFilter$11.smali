.class Lcom/mycompany/app/dialog/DialogSetFilter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$11;->a:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$11;->a:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p3, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const-string v0, "EXTRA_PATH"

    .line 15
    .line 16
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const/high16 p2, 0x4000000

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetFilter;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 25
    .line 26
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method
