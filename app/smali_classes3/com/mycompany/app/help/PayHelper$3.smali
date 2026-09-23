.class Lcom/mycompany/app/help/PayHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/help/PayHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$3;->c:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$3;->c:Lcom/mycompany/app/help/PayHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "mPayTime"

    .line 11
    .line 12
    sget-wide v2, Lcom/mycompany/app/pref/PrefPdf;->O:J

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Lcom/mycompany/app/pref/PrefCore;->o(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "mPayConfirm"

    .line 18
    .line 19
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->P:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
