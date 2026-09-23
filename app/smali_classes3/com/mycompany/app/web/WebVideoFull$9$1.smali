.class Lcom/mycompany/app/web/WebVideoFull$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$9;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$9$1;->c:Lcom/mycompany/app/web/WebVideoFull$9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$9$1;->c:Lcom/mycompany/app/web/WebVideoFull$9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$9;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->z(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
