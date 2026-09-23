.class Lcom/mycompany/app/web/WebNestView$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$19$1;->c:Lcom/mycompany/app/web/WebNestView$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$19$1;->c:Lcom/mycompany/app/web/WebNestView$19;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView$19;->c:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestView;->O1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebNestView;->P1:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v1, Lcom/mycompany/app/web/WebNestView;->O1:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebNestView;->P1:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView$19;->c:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    invoke-static {v0, v2, v3}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
