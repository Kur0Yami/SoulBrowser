.class Lcom/mycompany/app/main/image/MainImageView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageView$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$2$1;->c:Lcom/mycompany/app/main/image/MainImageView$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView$2$1;->c:Lcom/mycompany/app/main/image/MainImageView$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView$2;->c:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageView;->z:Lcom/mycompany/app/main/image/MainImageView$ZoomItem;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->a:Landroid/net/Uri;

    .line 16
    .line 17
    iget-object v4, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/mycompany/app/main/image/MainImageView$ZoomItem;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v5, v0, Lcom/mycompany/app/main/image/MainImageView;->m:Z

    .line 22
    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    const-class v5, Landroid/graphics/drawable/PictureDrawable;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->K(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->M:Lcom/mycompany/app/view/MyGlideTarget;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 50
    .line 51
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->M:Lcom/mycompany/app/view/MyGlideTarget;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->M:Lcom/mycompany/app/view/MyGlideTarget;

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    if-eqz v3, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->K(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->K:Lcom/mycompany/app/view/MyGlideTarget;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_5
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v3, v4, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->K:Lcom/mycompany/app/view/MyGlideTarget;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->n:Lcom/mycompany/app/view/GlideRequests;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 150
    .line 151
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageView;->K:Lcom/mycompany/app/view/MyGlideTarget;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
