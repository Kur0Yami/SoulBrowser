.class public Lcom/mycompany/app/web/WebEmgTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;,
        Lcom/mycompany/app/web/WebEmgTask$LoadTask;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebNestView;

.field public d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

.field public e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgTask;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/mycompany/app/web/WebEmgTask$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebEmgTask$1;-><init>(Lcom/mycompany/app/web/WebEmgTask;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebNestView;->setHtmlListener(Lcom/mycompany/app/web/WebNestView$WebHtmlListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    iput-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    :cond_2
    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 27
    .line 28
    const-string v2, "(function(){android.onViewHtml(window.location.href,document.body.innerHTML);})();"

    .line 29
    .line 30
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :pswitch_0
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask;->e:Lcom/mycompany/app/web/WebEmgTask$LoadTask;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->a:Z

    .line 15
    .line 16
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebNestView;->setHtmlListener(Lcom/mycompany/app/web/WebNestView$WebHtmlListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 24
    .line 25
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/web/WebEmgTask;->d:Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 28
    .line 29
    return-void
.end method
