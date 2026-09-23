.class Lcom/mycompany/app/web/WebVideoImage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$5;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage$5;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->c:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/high16 v1, -0x1000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/web/WebVideoImage$6;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lcom/mycompany/app/web/WebVideoImage$7;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoImage$7;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
