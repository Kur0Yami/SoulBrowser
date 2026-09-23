.class Lcom/mycompany/app/web/WebVideoFull$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$31;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$31;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->g:Z

    .line 15
    .line 16
    const/high16 v1, -0x1000000

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$32;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$33;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebVideoFull$33;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebVideoFull;->c0(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
