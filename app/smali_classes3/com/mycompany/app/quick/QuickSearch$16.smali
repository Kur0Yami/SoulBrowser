.class Lcom/mycompany/app/quick/QuickSearch$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/quick/QuickSearch;->setLoadClip(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$16;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$16;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->T4(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, v0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 10
    .line 11
    if-ne v2, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$17;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/mycompany/app/quick/QuickSearch$17;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
