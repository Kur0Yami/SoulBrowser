.class Lcom/mycompany/app/main/image/MainImageQuick$19$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$19$2;->c:Lcom/mycompany/app/main/image/MainImageQuick$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$19$2;->c:Lcom/mycompany/app/main/image/MainImageQuick$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageQuick$19;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->s1:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->M1:Z

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 15
    .line 16
    .line 17
    sget v1, Lnet/kaki87/soul2/testing/R$string;->setted:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 23
    .line 24
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 25
    .line 26
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Landroid/content/Intent;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "EXTRA_PATH"

    .line 36
    .line 37
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageQuick;->finish()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
