.class public Lcom/mycompany/app/web/WebHmgTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;,
        Lcom/mycompany/app/web/WebHmgTask$LoadTask;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebNestView;

.field public d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

.field public e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgTask;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lcom/mycompany/app/web/WebHmgTask$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebHmgTask$1;-><init>(Lcom/mycompany/app/web/WebHmgTask;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lcom/mycompany/app/web/WebNestView;->setHtmlListener(Lcom/mycompany/app/web/WebNestView$WebHtmlListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static a(Lorg/jsoup/nodes/Document;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "select[id=\'mobile-single-page-select\']"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/mycompany/app/web/WebHmgTask;->c(Lorg/jsoup/nodes/Document;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const-string p0, "option"

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_6

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    move v2, v0

    .line 35
    :cond_2
    :goto_0
    if-ge v2, v1, :cond_6

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lorg/jsoup/nodes/Attribute;

    .line 67
    .line 68
    if-nez v4, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    :cond_6
    :goto_2
    return v0
.end method

.method public static c(Lorg/jsoup/nodes/Document;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "option"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move v2, v0

    .line 22
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_6

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lorg/jsoup/nodes/Attribute;

    .line 54
    .line 55
    if-nez v4, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {v4}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_3

    .line 67
    .line 68
    const/16 v5, 0x2d

    .line 69
    .line 70
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->r(ILjava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask;->e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/web/WebHmgTask;->e:Lcom/mycompany/app/web/WebHmgTask$LoadTask;

    .line 13
    .line 14
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

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

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->f:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;->a()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebHmgTask;->b()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    const-string v2, "(function(){android.onViewHtml(window.location.href,document.body.innerHTML);})();"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final f(I)V
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
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->f:Z

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

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebHmgTask;->b()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->a:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setHtmlListener(Lcom/mycompany/app/web/WebNestView$WebHtmlListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/web/WebHmgTask;->c:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    :cond_0
    iput-object v2, p0, Lcom/mycompany/app/web/WebHmgTask;->d:Lcom/mycompany/app/web/WebHmgTask$HmgTaskListener;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebHmgTask;->f:Z

    .line 20
    .line 21
    return-void
.end method
