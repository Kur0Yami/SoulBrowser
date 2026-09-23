.class public Landroidx/webkit/internal/SpeculativeLoadingParametersAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/support_lib_boundary/SpeculativeLoadingParametersBoundaryInterface;


# virtual methods
.method public final getAdditionalHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getNoVarySearchData()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isJavaScriptEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
