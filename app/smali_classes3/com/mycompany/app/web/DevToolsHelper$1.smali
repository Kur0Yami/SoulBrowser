.class Lcom/mycompany/app/web/DevToolsHelper$1;
.super Ljava/lang/Object;
.source "DevToolsHelper.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/DevToolsHelper;->inject(Lcom/mycompany/app/web/WebViewActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$whenAbsent:Ljava/lang/String;

.field final synthetic val$whenPresent:Ljava/lang/String;

.field final synthetic val$webView:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method constructor <init>(Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$webView:Lcom/mycompany/app/web/WebNestView;

    iput-object p2, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$whenPresent:Ljava/lang/String;

    iput-object p3, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$whenAbsent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/DevToolsHelper$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$webView:Lcom/mycompany/app/web/WebNestView;

    iget-object v1, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$whenPresent:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_1b

    :cond_12
    iget-object p1, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$webView:Lcom/mycompany/app/web/WebNestView;

    iget-object v1, p0, Lcom/mycompany/app/web/DevToolsHelper$1;->val$whenAbsent:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_1b
    return-void
.end method
