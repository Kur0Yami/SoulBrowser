.class Lcom/mycompany/app/main/MainTransLocale$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransLocale$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$8$1;->c:Lcom/mycompany/app/main/MainTransLocale$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$8$1;->c:Lcom/mycompany/app/main/MainTransLocale$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale$8;->c:Lcom/mycompany/app/main/MainTransLocale;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "(function(){android.onDocHtml(document.documentElement.innerHTML);})();"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
