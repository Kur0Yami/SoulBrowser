.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onPassClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$14;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$14;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_1
    const/16 v4, 0x23

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    sget-object v2, Lcom/mycompany/app/main/MainNative;->F:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v4, v2}, Lcom/mycompany/app/main/MainNative;->a(ILjava/util/List;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    sget-object v5, Lcom/mycompany/app/main/MainNative;->F:Ljava/util/ArrayList;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    move v6, v3

    .line 39
    :goto_0
    if-ge v6, v4, :cond_5

    .line 40
    .line 41
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->getPassJs3(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    sput-object v2, Lcom/mycompany/app/main/MainNative;->F:Ljava/util/ArrayList;

    .line 59
    .line 60
    move-object v5, v2

    .line 61
    :goto_1
    if-eqz v5, :cond_9

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eq v2, v4, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    move v6, v3

    .line 76
    :goto_2
    if-ge v6, v4, :cond_8

    .line 77
    .line 78
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_7

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-static {v1, v2, v4}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    :cond_9
    :goto_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ma:Z

    .line 106
    .line 107
    return-void
.end method
